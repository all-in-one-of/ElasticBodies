# this is the main pipeline script that takes input from the Optimization
# algorithm and transforms the individuals into testable input into the
# simulation.

# input:
# --file + "something.scad"  -> indicates to run with an already generated scad file
# --create + "filename.txt"  -> indicates to generate scad files for a file containing all of the data for an individual in a single line
# --template + "filename.py" -> indicates which template to use for generating scad files
# --name + "name"            -> indicates specific name for non-batch input file
# --sConfig + "name.ini"     -> indicates the specific slic3r settings to use
# --ind + #                  -> indicates individual number
# --gen + #                  -> indicates generation number
# -c                         -> indicates that this script should delete intermediate files after it runs
# -s                         -> indicates that elastic should not be ran

# if both file and batch are defined the results are undefined
# name, ind, gen are completely optional
# ind just defines the index of the first individual

import sys, getopt, os, subprocess

isCreate = False
isCreateBase = False
isInd = False
cleanAll = False
skipRun = False
isOrig = False
template = ""
name = ""
generation = 0
individual = 0
force = 10000000;
preped = '../shared/beam'
prepedMesh = '../shared/beam.off'
forceData = '../shared/beam.txt'
resultMeshes = '../PipelineTests/'

currentPath = os.path.dirname(os.path.abspath(__file__))
pathsFile = 'paths.txt'

fixedMeshedFile = "/scratch/cluster/zmisso/ElasticBodies/Pipeline/fixedUnion.off"
largestOff = "/scratch/cluster/zmisso/ElasticBodies/Pipeline/largest.off"
restOff = "/scratch/cluster/zmisso/ElasticBodies/Pipeline/rest.off"
pathToCgal = "/scratch/cluster/zmisso/cgal/Polygon_mesh_processing/examples/Polygon_mesh_processing/build/main"
pathTo3DUnion = "/scratch/cluster/zmisso/libigl/tutorial/build/3dUnion_bin"
pathToSplit = "/scratch/cluster/zmisso/ElasticBodies/3dUnion/remesh"
pathToSimPrep = "/scratch/cluster/zmisso/ElasticBodies/Pipeline/SimPrep/simprep"
pathToOpenscad = "/lusr/opt/openscad-2015.03-2/bin/openscad"
pathToSlic3r = '/scratch/cluster/zmisso/Slic3r/bin/slic3r'
pathToSlic3rConfig = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/slic3rConfig.ini'
pathToConvertStlOff = "/scratch/cluster/zmisso/libigl/tutorial/build/StlToOff_bin"
pathToConvertOffObj = "/scratch/cluster/zmisso/libigl/tutorial/build/OffToObj_bin"
pathToCleanMesh = "/scratch/cluster/zmisso/meshfix/build2/libigl_example"
pathToFixMissingLine = "/scratch/cluster/zmisso/ElasticBodies/Pipeline/fixMissingLine.py"
pathToTempFiles = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/'
pathToGcode2Layers = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/gcode2layers.py'
pathToElastic = '/scratch/cluster/zmisso/ElasticBodies/Simulation/build/elastic'
pathToEvaluateFitness = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/GA/fitnesstest.py'

try:
  opts, args = getopt.getopt(sys.argv[1:], 'cs', ["file=","create=","createBase=","createBaseOrig=","template=","name=","ind=","gen=", "sConfig=", "preped=", "dorce=", "temp="])
except getopt.GetoptError:
  print 'Error Bad Input'
  sys.exit(-2)
for opt, arg in opts:
  if opt == "--file":
    isBatch = False
    isFile = True
    name = arg.strip(' \t\n\r')
  if opt == "--create":
    isCreate = True
    isCreateBase = False
    isFile = False
    name = arg.strip(' \t\n\r')
  if opt == "--createBase":
    isCreate = True
    isCreateBase = True
    name = arg.strip(' \t\n\r')
    isFile = False
  if opt == "--createBaseOrig":
    isCreate = True
    isCreateBase = True
    name = arg.strip(' \t\n\r')
    isOrig = True
    isFile = False
  if opt == "--template":
    template = arg.strip(' \t\n\r')
  if opt == "--name":
    name = arg.strip(' \t\n\r')
  if opt == "--gen":
    generation = int(float(arg))
  if opt == "--ind":
    individual = int(float(arg))
  if opt == "--force":
    force = float(arg)
  if opt == "--preped":
    preped = arg.strip(' \t\n\r')
    prepedMesh = arg.strip(' \t\n\r') + '.off'
    forceData = arg.strip(' \t\n\r') + '.txt'
  if opt == "-c":
    cleanAll = True
  if opt == "-s":
    skipRun = True
  if opt == "--sConfig":
    sConfig = arg
  if opt == "--temp":
    pathToTempFiles = arg.strip(' \t\n\r')

initialScadFiles = []
initialSTLFiles = []
initialOBJFiles = []
initialGCodeFiles = []
initialLayerSizes = []
layerScadFiles = []
layerSTLFiles = []
layerObjFiles = []

meshedFile = pathToTempFiles + "unioned.off"
largestOff = pathToTempFiles + "largest.off"
restOff = pathToTempFiles + "rest.off"
fixedMeshedFile = pathToTempFiles + 'fixedMesh.off'

if isCreate == True:
  # generate all of the scad files based on the template
  batchData = open(name)
  for line in batchData.readlines():
    curLine = line.strip().split(' ')
    print 'Template:', template
    command = command = ['python', template]
    if isCreateBase == False:
      command = ['python', template, '-a']
    for obj in curLine:
      command.append(obj)
    result = subprocess.check_output(command)
    initialScadFiles.append(result.strip())
else:
  initialScadFiles.append(name)

for i in range(len(initialScadFiles)):
  # run openscad -o initialScadFiles[i][:-5]+".stl" initialScadFiles[i]
  print 'openscad -o ' + initialScadFiles[i][:-5] + '.off ' + initialScadFiles[i]
  try:
    result = subprocess.check_output([pathToOpenscad, '-o', initialScadFiles[i][:-5] + '.off', initialScadFiles[i]])
  except OSError as e:
    print 'There was a System Error Initial Openscad: ', e, '\n'
  # add generated stl file to list for next step
  initialSTLFiles.append(initialScadFiles[i][:-5]+".off")

for i in range(len(initialSTLFiles)):
	print pathToFixMissingLine, initialSTLFiles[i]
	try:
		result = subprocess.check_output(['python', pathToFixMissingLine, '--input', initialSTLFiles[i]])
	except OSError as e:
		print 'There was a System Error Fix Missing Line:', e, '\n'

for i in range(len(initialSTLFiles)):
  print pathToConvertOffObj, initialSTLFiles[i]
  try:
    result = subprocess.check_output([pathToConvertOffObj, initialSTLFiles[i], initialSTLFiles[i][:-4] + '.obj'])
  except OSError as e:
    print 'There was a System Error Initial Off:', e, '\n'
  initialOBJFiles.append(initialSTLFiles[i][:-4] + '.obj')

#initialSTLFiles.append("ASTMD638_specimen.stl")

if isOrig == False:
  for i in range(len(initialOBJFiles)):
    # run slic3r initialSTLFiles[i] --load sConfig
    print 'slic3r', initialOBJFiles[i], '--load', pathToSlic3rConfig
    try:
      result = subprocess.check_output([pathToSlic3r, initialOBJFiles[i], '--load', pathToSlic3rConfig])
      print 'Finished Slic3r'
    except OSError as e:
      print 'There was a System Error: Initial Slic3r', e, '\n'
    # add generated gcode file to list for next step
    initialGCodeFiles.append(initialOBJFiles[i][:-4]+".gcode")

  for i in range(len(initialGCodeFiles)):
    # run python gcode2layers.py --name initialGCodeFiles[i]
    print 'python gcode2layers.py --name', initialGCodeFiles[i]
    # get number of layers and append it to layers
    numberOfLayers = 0
    try:
      print 'Running gcode2layers.py'
      numberOfLayers = int(subprocess.check_output(['python', pathToGcode2Layers, '--name', initialGCodeFiles[i]])) + 1
    except OSError as e:
      print 'There was a System Error: GCODE', e, '\n'

    # add numberOfLayers to list
    initialLayerSizes.append(numberOfLayers)

    for j in range(numberOfLayers):
      # add generated layer files to list of layers
      layerScadFiles.append(initialGCodeFiles[i][:-6]+"_layer_"+str(j)+".scad")

  for i in range(len(layerScadFiles)):
    # run openscad -o layerScadFiles[i][:-5]+".stl" layerScadFiles[i]
    print 'openscad -o', layerScadFiles[i][:-5]+'.off', layerScadFiles[i]
    try:
      result = subprocess.check_output([pathToOpenscad, '-o', layerScadFiles[i][:-5]+'.off', layerScadFiles[i]])
    except OSError as e:
      print 'There was a System Error: Gcode2Layers', e, '\n'

    # add generated file to layerSTLFiles
    layerSTLFiles.append(layerScadFiles[i][:-5] + '.off')

  for i in range(len(layerSTLFiles)):
    print pathToFixMissingLine, layerSTLFiles[i]
    try:
      result = subprocess.check_output(['python', pathToFixMissingLine, '--input', layerSTLFiles[i]])
    except OSError as e:
      print 'There was a System Error Fix Missing Line:', e, '\n'

  # combine obj files into one file
  for i in range(len(initialGCodeFiles)):
    # run ./3dUnion_bin initialGCodeFiles[i][:-6] initialLayerSizes[i]
    print './3dUnion_bin', initialGCodeFiles[i][:-6], initialLayerSizes[i], pathToTempFiles
    try:
      temp = 0
      result = subprocess.check_output([pathTo3DUnion, str(initialGCodeFiles[i][:-6]), str(initialLayerSizes[i]), meshedFile])
    except OSError as e:
      print 'There was a System Error: 3DUnion', e, '\n'

  try:
    print pathToSplit, meshedFile, pathToTempFiles
    result = subprocess.check_output([pathToSplit, meshedFile, pathToTempFiles])
    print 'Finished Split'
  except OSError as e:
    print 'There was a System Error Split', e, '\n'

  temp = ''

  try:
    print pathToCgal, largestOff, restOff, pathToTempFiles
    print os.listdir(pathToTempFiles)
    temp = subprocess.check_output([pathToCgal, largestOff, restOff, pathToTempFiles])
    print temp
    print 'Finished Remesh'
  except OSError as e:
    print temp
    print 'There was a System Error Remesh', e, '\n'

  # clean mesh
  try:
    print pathToCleanMesh, 'out.off', fixedMeshedFile
    result = subprocess.check_output([pathToCleanMesh, pathToTempFiles + 'out.off', fixedMeshedFile])
  except OSError as e:
    print 'There was a System Error CP', e, '\n'
else:
  for i in range(len(initialSTLFiles)):
    print initialSTLFiles[i]
    try:
      result = subprocess.check_output([pathToMeshlabServer, '-i', initialSTLFiles[i], '-o', initialSTLFiles[i][:-4]+'.off'])
    except OSError as e:
      print 'There was a System Error: WHAT', e, '\n'
    fixedMeshedFile = initialSTLFiles[i][:-4]+'.off'
    print 'FIXED :: ', fixedMeshedFile

try:
  print './simprep --inputMeshOff', fixedMeshedFile, '--outputM', prepedMesh, 'outputF', forceData, '--forceYAxis', '-1', '--maxForce', force, ''
  result = subprocess.check_output([pathToSimPrep, '--meshOff', fixedMeshedFile, '--outputM', prepedMesh, '--outputF', forceData, '--forceZAxis', '-1', '--maxForce', str(force)])
except OSError as e:
  print 'There was a System Error ', e, '\n'

if skipRun == False:
  # call simulation
  try:
    print './elastic', '\n'
    #result = subprocess.check_output([pathToElastic, pathToTempFiles])
  except OSError as e:
    print 'There was a System Error Elastic', e, '\n'

  try:
    print './evaluateFitness', '\n'
    result = subprocess.check_output(['python', pathToEvaluateFitness, '--experimentDir', pathToTempFiles])
  except OSError as e:
    print 'There was a System Error Evaluate Fitness', e, '\n'

print 'rm', fixedMeshedFile
subprocess.check_output(['rm', fixedMeshedFile])
print 'rm', meshedFile
subprocess.check_output(['rm', meshedFile])
print 'rm', restOff
subprocess.check_output(['rm', restOff])
print 'rm', largestOff
subprocess.check_output(['rm', largestOff])
print 'rm', prepedMesh
subprocess.check_output(['rm', prepedMesh])
print 'rm', forceData
subprocess.check_output(['rm', forceData])
print 'rm', pathToTempFiles + 'out.off'
subprocess.check_output(['rm', pathToTempFiles + 'out.off'])
for i in range(len(initialScadFiles)):
  print 'rm', initialScadFiles[i]
  result = subprocess.check_output(['rm', initialScadFiles[i]])
for i in range(len(initialOBJFiles)):
  print 'rm', initialOBJFiles[i]
  result = subprocess.check_output(['rm', initialOBJFiles[i]])
for i in range(len(initialSTLFiles)):
  print 'rm', initialSTLFiles[i]
  result = subprocess.check_output(['rm', initialSTLFiles[i]])
for i in range(len(initialGCodeFiles)):
  print 'rm', initialGCodeFiles[i]
  result = subprocess.check_output(['rm', initialGCodeFiles[i]])
for i in range(len(layerScadFiles)):
  print 'rm', layerScadFiles[i]
  result = subprocess.check_output(['rm', layerScadFiles[i]])
for i in range(len(layerSTLFiles)):
  print 'rm', layerSTLFiles[i]
  result = subprocess.check_output(['rm', layerSTLFiles[i]])
