// written by Samuel Lujan

#include <Rcpp.h>

using namespace Rcpp;

// set seed
// [[Rcpp::export]]
void set_seed(double seed) {
    Rcpp::Environment base_env("package:base");
    Rcpp::Function set_seed_r = base_env["set.seed"];
    set_seed_r(seed);
    // set_seed_r(std::floor(std::fabs(seed))); -- original
}

// [[Rcpp::export]]

DataFrame forced_c(Rcpp::NumericMatrix mt, int sm, int maxiter) {
	double dx;
	double dy;
	double Fd;
	double d;	
	double forcevx;
	double forcevy;
	R_xlen_t n = mt.nrow();
	set_seed(sm);
	NumericVector locx = Rcpp::round(Rcpp::runif(n)*1L,5);
	NumericVector locy = Rcpp::round(Rcpp::runif(n)*1L,5);
	double K = 0.75 * sqrt(((max(locx)-min(locx)) * (max(locy)-min(locy)))/n);
	NumericVector forcex(n);
	NumericVector forcey(n);
	for (int niter = 0; niter < maxiter; ++niter) {		// R_xlen_t
		// Start with rows: 1 to n
		for (int i = 0; i < n; ++i) {	
			// Scalar forces for X and Y  (initial zero)
		  	forcevx = 0.0;
			forcevy = 0.0;
			for (int j = n-1; j > -1; --j) {
				if(i != j) {
					// Distances in X and Y
					dx = locx[j] - locx[i]; 
					dy = locy[j] - locy[i]; 
					d = sqrt(dx*dx + dy*dy);
					if(mt[i,j] != 0) {
						// Apply QUADRATIC force when i and j are linked
						Fd = (d/K) - (K*K)/(d*d);
					} else if(mt[i,j]==0) {
							// Apply REPULSIVE force otherwise
							Fd = -(K*K)/(d*d);
					}
					// Update Scalars
					forcevx = forcevx + Fd*dx;
					forcevy = forcevy + Fd*dy;
				}
			}
			// Update Vectors
			forcex[i] = forcevx;
			forcey[i] = forcevy;
		}  // fin for i
	  // Update Locations in X and Y (locx, locy)
	  double wniter;
	  double forcemag;
	  double scala;
	  for (int i = 0; i != n; ++i) {
		forcemag = sqrt(pow(forcex(i), 2) + pow(forcey(i), 2));
		// Cool down with a scala
		wniter = 2.0/niter;		// No funciona con 2L, se cuelga, lo cual es curioso
		if (wniter > forcemag) 
			scala = 1;
		else
			scala = wniter/forcemag; 
		// scala <- (Rcpp::min(forcemag, 2.0/niter)) / forcemag;
		locx(i) = locx(i) + (forcex(i) * scala);
		locy(i) = locy(i) + (forcey(i) * scala);
	  };
	}
	// OUTPUT: Updated coordenates in the data fame
	// crd[,1] <- locx
	// crd[,2] <- locy

	return Rcpp::DataFrame::create(Named("X", locx), Named("Y" , locy));
}
