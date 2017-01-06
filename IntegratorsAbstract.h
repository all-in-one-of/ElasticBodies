#ifndef integrators_abstract_h
#define integrators_abstract_h

#include "solidmesh.h"
#include <Eigen/CholmodSupport>
#include <lbfgs.h>


class IntegratorAbstract{

public:
	int simTime =0;
	double h; //timestep
	SparseMatrix<double> InvMass;
	SparseMatrix<double> RegMass;
	// SimplicialLLT<SparseMatrix<double>> llt_solver;
	CholmodSupernodalLLT<SparseMatrix<double>> llt_solver;
	SparseMatrix<double> forceGradient;
	
	vector<int> fixedVerts;
	int vertsNum; //number of vertices

	SolidMesh M; //NEW IDEA: Pass in from simulation
	MatrixXd TV;
	MatrixXi TT;

	VectorXd x_old, v_old, f, massVector, external_f;
	int width;
	int height;
	double convergence_scaling_paramter = 1.0;

	bool isFixed(int vert);
	void printInfo();
	virtual void render(VectorXd& ext_force)=0; //pure virtual render class
	virtual void initializeIntegrator(double ph, SolidMesh& pM, MatrixXd& pTV, MatrixXi& pTT)=0;
	void analyzeCholeskySetup();

	void initVectors();
	void initMassMatrices();
	void fixVertices(vector<int> fixMe);
	void createXFromTet();
	void findgBlock(VectorXd& g_block, VectorXd& x, VectorXd& x_old, int ignorePast);
};

#endif