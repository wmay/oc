/*
 * nomprob.c:  This function takes a matrix of yeah positions,
 *             a matrix of nay positions, and matrix of ideal points
 *             and returns a matrix indicting the probability that
 *             each voter votes yeah on each vote.
 * inputs:
 *         yeah (double):   m x d matrix of yeah positions
 *         no   (double):   m x d matrix of no positions
 *         ideal (double):  n x d matrix of ideal points
 *         beta (double):   "beta" parameter in NOMINATE
 *         weight (double): "Dimension" weight in NOMINATE
 *         votes (int):     number of rollcall votes (m)
 *         members (int):   number of legislators (n)
 *         dims (int):      number of dimensions (d)
 *
 *  returns:
 *         yeahProbs (double): n x m matrix of yeah probabilities
 *
 */

#include "R.h"
#include "Rmath.h"

void nomprob(double *yeah, double *no, double *ideal, double *beta, double *w,
             int *votes, int *members, int *dims, double *yeahProb, int *normal)
{
   int i, j, k;
   double distYeah, distNo;
   const int n = *members;
   const int m = *votes;
   const int d = *dims;
   const double b = *beta;
   double (*cdf)(double,double,double,int,int);
   cdf=&pnorm; 


   if(*normal==1)
    cdf=&pnorm;
   else 
    cdf=plogis;

   for (i=0;i<m;i++) {
      for (j=0;j<n;j++) {
         distYeah = 0.0;
         distNo   = 0.0;
         for (k=0;k<d;k++) {
            distYeah -= w[k]*(ideal[j*d+k]-yeah[i*d+k])*(ideal[j*d+k]-yeah[i*d+k]);
            distNo   -= w[k]*(ideal[j*d+k]-no[i*d+k])*(ideal[j*d+k]-no[i*d+k]);
         }
         yeahProb[i*n + j] = (*cdf)( b*(exp(distYeah)-exp(distNo)) , 0.0, 1.0, 1, 0 );
      }
   }
}
