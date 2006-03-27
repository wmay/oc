#include <R.h>
#include <Rmath.h>
#include <R_ext/Lapack.h>

void F77_SUB(rndstart)(void) { GetRNGstate(); }
void F77_SUB(rndend)(void) { PutRNGstate(); }
double F77_SUB(rnunf)(void) { return runif(0.0,1.0); }

void R_FlushConsole(void);
void R_ProcessEvents(void);

void F77_SUB(flushcon)(void) { R_FlushConsole(); }
void F77_SUB(procevent)(void) {
#ifdef __win32
    R_ProcessEvents();
#endif 
}

void F77_SUB(echoevent)(int *action){
    const int a = *action;
    switch(a) {
        case 9:
            Rprintf("\t\tGenerating Start Coordinates...\n");
            break;
        case 1:
            Rprintf("\t\tGetting legislator coordinates...\n");
            break;
        case 11:
            Rprintf("\t\tGetting normal vectors...\n");
            break;
        case 12:
            Rprintf("\t\tRunning Edith Algorithm...\n");
            break;
/*
        case 13:
            Rprintf("\t\tComputing legislator rank ordering...\n");
            break;
        case 14:
            Rprintf("\t\tComputing cut point ordering...\n");
            break;
*/
        case 15:
            Rprintf("\t\tPermuting adjacent legislator pairs...\n");
            break;
        case 16:
            Rprintf("\t\tPermuting adjacent legislator triples...\n");
            break;         
    }       
}
