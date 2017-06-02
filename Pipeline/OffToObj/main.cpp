#include <igl/read_triangle_mesh.h>
#include <igl/copyleft/cgal/CSGTree.h>
#include <igl/viewer/Viewer.h>
#include <igl/jet.h>
#include <Eigen/Core>
#include <vector>
#include <igl/writeOBJ.h>
#include <igl/writeOFF.h>
#include <igl/readSTL.h>
#include <igl/readOFF.h>

#include "tutorial_shared_path.h"

#define PATH_TO_OBJ_FILES ""

using namespace Eigen;
using namespace igl::copyleft::cgal;
using namespace std;
using namespace igl;

int main(int argc, char * argv[])
{
  MatrixXi Fs;
  MatrixXd Vs;
 	// Read arguements 
  string name(argv[1]);
  // Read in inputs as double precision floating point meshes
  readOFF(name,Vs,Fs);
  // Write as Off
  writeOBJ(PATH_TO_OBJ_FILES"testConvert.obj", Vs, Fs);
}
