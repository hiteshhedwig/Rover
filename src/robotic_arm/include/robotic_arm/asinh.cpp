//
// File: asinh.cpp
//
// MATLAB Coder version            : 3.3
// C/C++ source code generated on  : 19-Jun-2018 19:44:14
//

// Include Files
#include "rt_nonfinite.h"
#include "ikine_6dof.h"
#include "asinh.h"

// Function Definitions

//
// Arguments    : double *x
// Return Type  : void
//
void b_asinh(double *x)
{
  boolean_T xneg;
  double t;
  double absz;
  xneg = (*x < 0.0);
  if (xneg) {
    *x = -*x;
  }

  if (*x >= 2.68435456E+8) {
    *x = std::log(*x) + 0.69314718055994529;
  } else if (*x > 2.0) {
    *x = std::log(2.0 * *x + 1.0 / (std::sqrt(*x * *x + 1.0) + *x));
  } else {
    t = *x * *x;
    t = *x + t / (1.0 + std::sqrt(1.0 + t));
    *x = t;
    absz = std::abs(t);
    if ((absz > 4.503599627370496E+15) || (!((!rtIsInf(t)) && (!rtIsNaN(t))))) {
      *x = std::log(1.0 + t);
    } else {
      if (!(absz < 2.2204460492503131E-16)) {
        *x = std::log(1.0 + t) * (t / ((1.0 + t) - 1.0));
      }
    }
  }

  if (xneg) {
    *x = -*x;
  }
}

//
// File trailer for asinh.cpp
//
// [EOF]
//
