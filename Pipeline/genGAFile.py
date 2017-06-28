import sys, getopt, os

initialDirPath = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/'
executablePath = '/usr/bin/python'
arguments = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/GA/testDAG.py'
notifyUser = 'zack.misso@utexas.edu'
logPath = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/log/log$(Cluster)'
outputPath = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/output/out$(Cluster)'
errorPath = '/scratch/cluster/zmisso/ElasticBodies/Pipeline/error/err$(Cluster)'
filePath = 'testCondor'

try:
	opts, args = getopt.getopt(sys.argv[1:], '', ["initialDir=", "executable=", "arguements=", "user=", 'log=', 'output=', 'error=', 'file='])
except getopt.GetoptError:
	print 'Error Generating Condor Script'
	sys.exit(-1)

for opt, arg in opts:
	if opt == '--initialDir':
		initialDirPath = arg.strip(' \t\n\r')
	if opt == '--executable':
		executablePath = arg.strip(' \t\n\r')
	if opt == '--arguements':
		arguments = arg.strip(' \t\n\r')
	if opt == '--user':
		notifyUser = arg.strip(' \t\n\r')
	if opt == '--log':
		logPath = arg.strip(' \t\n\r')
	if opt == '--output':
		outputPath = arg.strip(' \t\n\r')
	if opt == '--error':
		errorPath = arg.strip(' \t\n\r')
	if opt == '--file':
		filePath = arg.strip(' \t\n\r')

condorScript = open(filePath, 'w')
condorScript.write("universe=vanilla\n")
condorScript.write("Initialdir="+initialDirPath+"\n")
condorScript.write("Executable="+executablePath+"\n")
condorScript.write("Arguments="+arguments+"\n")
condorScript.write("+Group=\"GRAD\"\n")
condorScript.write("+Project=\"INSTRUCTIONAL\"\n")
condorScript.write("+ProjectDescription=\"Elastic\"\n")
condorScript.write("#+GPUJob=true\n")
condorScript.write("#requirements=(TARGET.GPUSlot)\n")
condorScript.write("Notification=complete\n")
condorScript.write("Notify_user="+notifyUser+"\n")
condorScript.write("should_transfer_files=YES\n")
condorScript.write("Log="+logPath+"\n")
condorScript.write("Output="+outputPath+"\n")
condorScript.write("Error="+errorPath+"\n")
condorScript.write("Queue 1\n")
condorScript.close()