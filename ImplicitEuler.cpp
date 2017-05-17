#include "ImplicitEuler.h"

using namespace Eigen;
using namespace std;
using namespace alglib;

typedef Eigen::Triplet<double> Trip;
typedef Matrix<double, 12, 1> Vector12d;

void rep_grad(const real_1d_array &x, double func, void *impe){
	// cout<<"*********FUNC***********"<<endl;
	// cout<<func<<endl;
	// for(int i=0; i< ((ImplicitEuler *)impe)->x_k.rows(); i++)
	// 	cout << x[i] << " ";
	// cout << endl;
}

void function1_grad(const real_1d_array &y, double &func, real_1d_array &grad, void *impe)
{
		ImplicitEuler* in = (ImplicitEuler*) impe;

    int n = 3*(in->vertsNum - in->fixedVerts.size());


    VectorXd y_vec; y_vec.resize(in->vertsNum*3); y_vec.setZero();
    for(int i=0; i<n; i++){
    	in->x_k(i) = y[i]*in->h + in->h*in->v_old(i)+in->x_old(i);
    	y_vec(i) = y[i];
    }
    // cout<<"Pre bfgs x_k"<<endl;
    // cout<<in->x_k<<endl;

    in->ImplicitXtoTV(in->x_k, in->TVk);//TVk value changed in function
		in->ImplicitCalculateForces(in->TVk, in->forceGradient, in->x_k, in->f);

		//ENERGY SCALAR
		func = in->ImplicitCalculateEnergyFunction();
    func = func/in->convergence_scaling_paramter;

    //GRADIENT VECTcout<<"potential term"<<endl;
    VectorXd g = (in->RegMass*y_vec - in->h*in->f);
		cout<< "Kinetic ||df|| term: "<< (in->RegMass*y_vec).head(n).norm()/in->convergence_scaling_paramter<<endl;

		double grad_g =0;
		for(int i=0; i<n; i++){
			grad[i] = g(i) / in->convergence_scaling_paramter;
			grad_g += g(i)*g(i);
			if(g(i)> 1){
				cout<<i<<" - "<<g(i)<<", "<<y_vec(i)<<", "<<in->f(i)<<endl;
			}
		}
		VectorXd g_b = g.head(n);

	cout<<func<<", "<< sqrt(grad_g)/in->convergence_scaling_paramter<<", "<<(in->x_k - in->x_old).norm()<<", "<<(y_vec).norm() <<endl<<endl;

	string saveTestsHere = OUTPUT_SAVED_PATH"TestsResults/BFGS/Y:"+to_string(youngs)+"@R:"+to_string(rayleighCoeff)+"@step"+to_string(in->h)+"@"+to_string(in->TT.rows())+"tets@"+tetgen_code+"@"+objectName+"/";
	// MatrixXd ScaledTV = in->TV;
	// VectorXd scaledX = 100*in->x_k;
	// in->ImplicitXtoTV(scaledX, ScaledTV);
	// in->printObject(saveTestsHere, in->bfgsIterations, ScaledTV, in->TT, in->B);
	in->bfgsIterations +=1;
	// cout<<"positions diff"<<endl;
	// cout<<(in->x_k - in->x_old).norm()<<endl;
	// cout<<"-----End of run---------------------"<<endl;
	// cout<<"-----"<<"Positions"<<endl;
	// cout<<y_vec<<endl;
	// cout<<"kinetic term"<<endl;
	// cout<<kineticE/in->convergence_scaling_paramter<<endl;
	// cout<<"potential term"<<endl;
	// cout<<strainE/in->convergence_scaling_paramter<<endl;
	// cout<<"gravity term"<<endl;
	// cout<<gravE/in->convergence_scaling_paramter<<endl;
	// // cout<<"Masses"<<endl;
	// // cout<<in->RegMass<<endl;
	// cout<<"--**---"<<func<<endl;
	// cout<<"--**---"<<g<<endl;
}

int ImplicitEuler::alglibLBFGSVismay(VectorXd& ext_force){
  	external_f = ext_force;
    int N = 3*(vertsNum - fixedVerts.size());
    // cout<<"N value"<<endl;
    // cout<<N<<endl;
    real_1d_array x;
    double *positions= new double[N];
   	for(int i=0; i<N; i++){
   		positions[i] = 0 - v_old(i); // y = (x_k -x_o)/h - v // y = 0 - v
   	}

   	ImplicitTVtoX(x_k, TV);

    x.setcontent(N, positions);
    double epsg = sqrt(1e-11)/sqrt(convergence_scaling_paramter);
    double epsf = 0;
    double epsx = 0;
    double stpmax = 0;
    ae_int_t maxits = 0;
    minlbfgsstate state;
    minlbfgsreport rep;
    double teststep = 0;

    minlbfgscreate(12, x, state);
		cout<<"EPSG"<<endl;
		cout<<epsg<<endl;
    minlbfgssetcond(state, epsg, epsf, epsx, maxits);
    minlbfgssetxrep(state, true);


    alglib::minlbfgsoptimize(state, function1_grad, rep_grad, this);
    minlbfgsresults(state, x, rep);

    printf("TERMINATION TYPE: %d\n", int(rep.terminationtype)); // EXPECTED: 4

    // cout << "final x ";
    for(int i=0; i<N; i++){
    	x_k(i) = x_old[i] + h*v_old[i] + h*x[i];
		// cout << x_k(i) <<endl;
    }
    cout << endl;
    v_old = (x_k - x_old)/h;
    x_old = x_k;
    ImplicitXtoTV(x_old, TV);
    return 0;
}

double ImplicitEuler::ImplicitCalculateEnergyFunction()
{
		double func = 0;
		int n = 3*(vertsNum - fixedVerts.size());

		VectorXd y_vec = (((x_k - x_old)/h) - v_old);
		for(int i=n; i<y_vec.size(); i++){
			y_vec(i) = 0;
		}
		// cout<<"x_k"<<x_k.norm()<<endl;
		// cout<<"x_old"<<x_old.norm()<<endl;
		// cout<<"v_old"<<v_old.norm()<<endl;
		// cout<<"xk-xo "<<(x_k - x_old).norm()<<endl;
		// cout<<"xk-xo /h "<<(1/h)*(x_k - x_old).norm()<<endl;
		// cout<<"y_vec "<< y_vec.norm()<<endl;

		double kineticE =0.0;
		kineticE = (0.5*y_vec.transpose()*RegMass*y_vec);
		func += kineticE;
		// func =0.0;
		double strainE=0.0;
		for(unsigned int i=0; i<M.tets.size(); i++){
			strainE += M.tets[i].energy;
		}

    func += strainE;

    double gravE =0.0;
    for(unsigned int i=0; i<n/3; i++){
    	gravE += massVector(3*i+1) * (x_k(3*i+1) - x_old(3*i+1)) * gravity * (-1);
		}
    func += gravE;

		// cout<<"start ke"<<endl;
		cout<<"K E: "<<kineticE/convergence_scaling_paramter<<endl;
		cout<<"S E: "<<strainE/convergence_scaling_paramter<<endl;
		cout<<"G E: "<<gravE/convergence_scaling_paramter<<endl;
		cout<<"Energy: "<<func/convergence_scaling_paramter<<endl;
		return func;
}

void ImplicitEuler::find_dEnergyBlock(VectorXd& g_block, VectorXd& y_k, int ignorePastIndex){
	//new formulation
	// g_block = ((RegMass*y_k - h*f).head(3*ignorePastIndex))/convergence_scaling_paramter;
	// cout<<"Kinetic ||df|| term: "<< (RegMass*y_k).norm()/convergence_scaling_paramter<<endl;

	//old formulation
	g_block = (RegMass*(x_k - x_old + h*v_old) - h*h*f).head(3*ignorePastIndex)/convergence_scaling_paramter;

}

void ImplicitEuler::find_d_dEnergyBlock(SparseMatrix<double>& grad_g_block, SparseMatrix<double>& forceGradientStaticBlock, SparseMatrix<double>& RegMassBlock)
{
	//new and old formulation
	grad_g_block = (RegMassBlock - h*h*forceGradientStaticBlock - h*rayleighCoeff*RegMassBlock*forceGradientStaticBlock)/convergence_scaling_paramter;
}

void ImplicitEuler::renderNewtonsMethod(VectorXd& ext_force){
	//Implicit Code
	v_k.setZero();
	x_k.setZero();
	x_k = x_old;
	v_k = v_old;
	VectorXd f_old = f;
	double gamma = 0.5;
	double beta =0.25;

	clock_t t0 = clock();

	int ignorePastIndex = TV.rows() - fixedVerts.size();
	SparseMatrix<double> forceGradientStaticBlock;
	forceGradientStaticBlock.resize(3*ignorePastIndex, 3*ignorePastIndex);
	clock_t t1 = clock();


	SparseMatrix<double> RegMassBlock;
	RegMassBlock.resize(3*ignorePastIndex, 3*ignorePastIndex);
	RegMassBlock = RegMass.block(0, 0, 3*ignorePastIndex, 3*ignorePastIndex);


	clock_t t2 = clock();
	cout<<"t2 t1"<<endl;
	cout<<"SECONDS"<<double(t2 - t1)/CLOCKS_PER_SEC<<endl;

	forceGradient.setZero();
	bool Nan=false;
	int NEWTON_MAX = 100, i =0;

	for( i=0; i<NEWTON_MAX; i++){
		clock_t t3 = clock();
		grad_g.setZero();
		ImplicitXtoTV(x_k, TVk);//TVk value changed in function
		ImplicitCalculateElasticForceGradient(TVk, forceGradient);
		ImplicitCalculateForces(TVk, forceGradient, x_k, f);
		for(int k=0; k<f.rows(); k++){
			if(fabs(ext_force(k))>0.0001){
				f(k) += ext_force(k);
			}
		}
		// VectorXd g_block = x_k - x_old -h*v_old -h*h*InvMass*f;
		// grad_g = Ident - h*h*InvMass*forceGradient - h*rayleighCoeff*InvMass*forceGradient;


		//Block forceGrad and f to exclude the fixed verts
		forceGradientStaticBlock = forceGradient.block(0,0, 3*(ignorePastIndex), 3*ignorePastIndex);
		VectorXd g_block = ((RegMass*x_k - RegMass*x_old) - (RegMass*v_old*h) - h*h*f).head(3*ignorePastIndex);
		grad_g = RegMassBlock - h*h*forceGradientStaticBlock - h*rayleighCoeff*forceGradientStaticBlock;

		// Sparse Cholesky LL^T
		if(llt_solver.info() == Eigen::NumericalIssue){
			cout<<"Possibly using a non- pos def matrix in the LLT method"<<endl;
			exit(0);
		}
		llt_solver.factorize(grad_g);
		VectorXd deltaX = -1* llt_solver.solve(g_block);

		// ConjugateGradient<SparseMatrix<double>> cg;
		// cg.compute(grad_g);
		// if(cg.info() == Eigen::NumericalIssue){
		// 	cout<<"ConjugateGradient numerical issue"<<endl;
		// 	exit(0);
		// }
		// VectorXd deltaX = -1*llt.solve(g_block);

		//Sparse QR
		// SparseQR<SparseMatrix<double>, COLAMDOrdering<int>> sqr;
		// sqr.compute(grad_g);
		// VectorXd deltaX = -1*sqr.solve(g_block);
		// x_k.segment(0, 3*(ignorePastIndex)) += deltaX;

		x_k.segment(0, 3*(ignorePastIndex)) += deltaX;
		if(x_k != x_k){
			Nan = true;
			break;
		}

		cout<<"g norm"<<endl;
		cout<<g_block.squaredNorm()/convergence_scaling_paramter<<endl;
		if(g_block.squaredNorm()/convergence_scaling_paramter < sqrt(1e-11)/sqrt(convergence_scaling_paramter)){
			break;
		}

	}
	if(Nan){
		cout<<"ERROR: Newton's method doesn't converge"<<endl;
		cout<<i<<endl;
		exit(0);
	}
	if(i== NEWTON_MAX){
		cout<<"ERROR: Newton max reached"<<endl;
		cout<<i<<endl;
		exit(0);
	}
	v_old = (x_k - x_old)/h;
	x_old = x_k;
}

// void ImplicitEuler::renderNewtonsMethod(VectorXd& ext_force){
// 	//Implicit Code
// 	v_k.setZero();
// 	x_k.setZero();
// 	x_k = x_old;
// 	v_k = v_old;
//
// 	clock_t t0 = clock();
//
// 	int ignorePastIndex = TV.rows() - fixedVerts.size();
// 	SparseMatrix<double> forceGradientStaticBlock;
// 	forceGradientStaticBlock.resize(3*ignorePastIndex, 3*ignorePastIndex);
//
// 	SparseMatrix<double> RegMassBlock;
// 	RegMassBlock.resize(3*ignorePastIndex, 3*ignorePastIndex);
// 	RegMassBlock = RegMass.block(0, 0, 3*ignorePastIndex, 3*ignorePastIndex);
//
// 	forceGradient.setZero();
// 	bool Nan=false;
// 	int NEWTON_MAX = 100, i =0;
// 	VectorXd y_k = (((x_k - x_old)/h) - v_old);
// 	for(int i=3*ignorePastIndex; i<y_k.size(); i++){
// 		y_k(i) =0;
// 	}
//
// 	for( i=0; i<NEWTON_MAX; i++){
// 		//Convert from y to x for forces
// 		// for(int i=0; i<3*ignorePastIndex; i++){
//     // 	x_k(i) = h*y_k(i) + h*v_old(i) + x_old(i);
//     // }
// 		// x_k = h*(y_k + v_old) + x_old;
// 		cout<<"x_k going into the force fxn: "<<x_k.norm()<<endl;
//
// 		grad_g.setZero();
// 		ImplicitXtoTV(x_k, TVk);//TVk value changed in function
// 		ImplicitCalculateElasticForceGradient(TVk, forceGradient);
// 		ImplicitCalculateForces(TVk, forceGradient, x_k, f);
//
// 		for(int k=0; k<f.rows(); k++){
// 			if(fabs(ext_force(k))>0.0001){
// 				f(k) += ext_force(k);
// 			}
// 		}
//
// 		//Block forceGrad and f to exclude the fixed verts
// 		forceGradientStaticBlock = forceGradient.block(0,0, 3*(ignorePastIndex), 3*ignorePastIndex);
// 		VectorXd g_block;
// 		find_dEnergyBlock(g_block, y_k, ignorePastIndex);
// 		find_d_dEnergyBlock(grad_g, forceGradientStaticBlock, RegMassBlock);
//
// 		// Sparse Cholesky LL^T
// 		if(llt_solver.info() == Eigen::NumericalIssue){
// 			cout<<"Possibly using a non- pos def matrix in the LLT method"<<endl;
// 			exit(0);
// 		}
// 		llt_solver.factorize(grad_g);
// 		VectorXd Delta = -1* llt_solver.solve(g_block);
//
// 		//Sparse QR
// 		// SparseQR<SparseMatrix<double>, COLAMDOrdering<int>> sqr;
// 		// sqr.compute(grad_g);
// 		// VectorXd deltaX = -1*sqr.solve(g_block);
// 		// x_k.segment(0, 3*(ignorePastIndex)) += deltaX;
// 		cout<<"Delta: "<<Delta.norm()<<endl;
//
// 		cout<<"g block norm: "<<g_block.norm()<<endl;
//
// 		x_k.segment(0, 3*(ignorePastIndex)) += Delta;
// 		if(x_k != x_k){
// 			Nan = true;
// 			break;
// 		}
// 		if(g_block.norm() < sqrt(1e-11)/sqrt(convergence_scaling_paramter)){
// 			break;
// 		}
//
// 		// y_k.segment(0, 3*(ignorePastIndex)) += Delta;
// 		// if(y_k != y_k){
// 		// 	Nan = true;
// 		// 	break;
// 		// }
// 		// if(g_block.norm() < sqrt(1e-11)/h/convergence_scaling_paramter){
// 		// 	break;
// 		// }
// 		// x_k = h*(y_k + v_old) + x_old;
//
// 		cout<<"end of iter x: "<< x_k.norm()<<endl;
// 		cout<<"end of iter y: "<<y_k.norm()<<endl;
//
// 		cout<<ImplicitCalculateEnergyFunction()<<", "<< g_block.squaredNorm()<<", "<<(x_k - x_old).norm()<<", "<<(y_k).norm() <<endl<<endl;
// 	}
// 	if(Nan){
// 		cout<<"ERROR: Newton's method doesn't converge"<<endl;
// 		cout<<i<<endl;
// 		exit(0);
// 	}
// 	if(i== NEWTON_MAX){
// 		cout<<"ERROR: Newton max reached"<<endl;
// 		cout<<i<<endl;
// 		exit(0);
// 	}
//
// 	v_old = (x_k - x_old)/h;
// 	cout<<"True value for x: "<< (x_k - x_old).norm()<<endl;
// 	x_old = x_k;
// }

void ImplicitEuler::ImplicitCalculateForces( MatrixXd& TVk, SparseMatrix<double>& forceGradient, VectorXd& x_k, VectorXd& f){
	// //gravity
	f.setZero();
	for(unsigned int i=0; i<f.size()/3; i++){
		f(3*i+1) += massVector(3*i+1)*gravity;
	}

	VectorXd q = f.head(3*(vertsNum - fixedVerts.size()));
	cout<<"Gravity ||df|| term: "<< h*q.norm()/convergence_scaling_paramter<<endl;

	VectorXd strainF;
	strainF.resize(3*vertsNum);
	//elastic
	if(solver.compare("newton")==0){
		for(unsigned int i=0; i<M.tets.size(); i++){
			M.tets[i].computeElasticForces(TVk, strainF);
		}
	}else{
		for(unsigned int i=0; i<M.tets.size(); i++){
			M.tets[i].computeElasticForces(TVk, strainF);
		}
	}
	f += strainF;
	VectorXd strainBlocked = strainF.head(3*(vertsNum - fixedVerts.size()));
	cout<<"Strain ||df|| term: "<< h*strainBlocked.norm()/convergence_scaling_paramter<<endl;

	// f += rayleighCoeff*forceGradient*(x_k - x_old)/h;
	return;
}

void ImplicitEuler::ImplicitCalculateElasticForceGradient(MatrixXd& TVk, SparseMatrix<double>& forceGradient){
	forceGradient.setZero();

	vector<Trip> triplets1;
	triplets1.reserve(12*12*M.tets.size());
	for(unsigned int i=0; i<M.tets.size(); i++){
		//Get P(dxn), dx = [1,0, 0...], then [0,1,0,....], and so on... for all 4 vert's x, y, z
		//P is the compute Force Differentials blackbox fxn

		Vector12d dx(12);
		dx.setZero();
		Vector4i indices = M.tets[i].verticesIndex;
		int kj;
		for(unsigned int j=0; j<12; j++){
			dx(j) = 1;
			MatrixXd dForces = M.tets[i].computeForceDifferentials(TVk, dx);
			kj = j%3;
			//row in order for dfxi/dxi ..dfxi/dzl
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[0], dForces(0,0)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[0]+1, dForces(1,0)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[0]+2, dForces(2,0)));

			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[1], dForces(0,1)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[1]+1, dForces(1,1)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[1]+2, dForces(2,1)));

			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[2], dForces(0,2)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[2]+1, dForces(1,2)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[2]+2, dForces(2,2)));

			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[3], dForces(0,3)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[3]+1, dForces(1,3)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[3]+2, dForces(2,3)));
			dx(j) = 0; //ASK check is this efficient?
		}
	}
	forceGradient.setFromTriplets(triplets1.begin(), triplets1.end());
	return;
}

void ImplicitEuler::render(VectorXd& ext_force){
	cout<<"i"<<simTime<<endl;

	ImplicitTVtoX(x_k, TV);
	ImplicitCalculateForces(TV, forceGradient, x_k, f);
	IntegratorAbstract::printInfo();

	simTime+=1;

	if(solver.compare("newton")==0){
		renderNewtonsMethod(ext_force);

	}else if(solver.compare("lbfgsvismay")==0){
		alglibLBFGSVismay(ext_force);

	}else{
		cout<<"Solver not specified properly"<<endl;
		exit(0);
	}

	if(simTime == 2)
	{
		cout<<"*******************"<<endl;
		cout<< "New Pos "<<simTime<<endl;
		cout<<x_old.norm()<<endl;
		cout<< "New Vels "<<simTime<<endl;
		cout<<v_old.norm()<<endl;
		cout<<"*****************"<<endl<<endl;
	}
	IntegratorAbstract::printInfo();

	ImplicitXtoTV(x_old, TV);

}


void ImplicitEuler::initializeIntegrator(double ph, SolidMesh& pM, MatrixXd& pTV, MatrixXi& pTT, MatrixXd& pB){
	IntegratorAbstract::initializeIntegrator(ph, pM, pTV, pTT, pB);
	ZeroMatrix.resize(3*vertsNum, 3*vertsNum);
	ZeroMatrix.setZero();
	Ident.resize(3*vertsNum, 3*vertsNum);
	Ident.setIdentity();
	forceGradient.resize(3*vertsNum, 3*vertsNum);
	grad_g.resize(3*vertsNum, 3*vertsNum);
	x_k.resize(3*vertsNum);
	v_k.resize(3*vertsNum);
	external_f.resize(3*vertsNum);
	external_f.setZero();
	x_k.setZero();
	v_k.setZero();
	TVk = TV;
}

void ImplicitEuler::ImplicitXtoTV(VectorXd& x_tv, MatrixXd& TVk){
	TVk.setZero();
	for(unsigned int i=0; i < M.tets.size(); i++){
		Vector4i indices = M.tets[i].verticesIndex;
		TVk.row(indices(0)) = Vector3d(x_tv(3*indices(0)), x_tv(3*indices(0)+1), x_tv(3*indices(0) +2));
		TVk.row(indices(1)) = Vector3d(x_tv(3*indices(1)), x_tv(3*indices(1)+1), x_tv(3*indices(1) +2));
		TVk.row(indices(2)) = Vector3d(x_tv(3*indices(2)), x_tv(3*indices(2)+1), x_tv(3*indices(2) +2));
		TVk.row(indices(3)) = Vector3d(x_tv(3*indices(3)), x_tv(3*indices(3)+1), x_tv(3*indices(3) +2));
	}
	return;
}

void ImplicitEuler::ImplicitTVtoX(VectorXd& x_tv, MatrixXd& TVk){
	x_tv.setZero();
	for(unsigned int i = 0; i < M.tets.size(); i++){
		Vector4i indices = M.tets[i].verticesIndex;

		x_tv(3*indices(0)) = TVk.row(indices(0))[0];
		x_tv(3*indices(0)+1) = TVk.row(indices(0))[1];
		x_tv(3*indices(0)+2) = TVk.row(indices(0))[2];

		x_tv(3*indices(1)) = TVk.row(indices(1))[0];
		x_tv(3*indices(1)+1) = TVk.row(indices(1))[1];
		x_tv(3*indices(1)+2) = TVk.row(indices(1))[2];

		x_tv(3*indices(2)) = TVk.row(indices(2))[0];
		x_tv(3*indices(2)+1) = TVk.row(indices(2))[1];
		x_tv(3*indices(2)+2) = TVk.row(indices(2))[2];

		x_tv(3*indices(3)) = TVk.row(indices(3))[0];
		x_tv(3*indices(3)+1) = TVk.row(indices(3))[1];
		x_tv(3*indices(3)+2) = TVk.row(indices(3))[2];
	}
}
