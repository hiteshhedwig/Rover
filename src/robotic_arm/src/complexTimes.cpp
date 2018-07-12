//
// File: complexTimes.cpp
//
// MATLAB Coder version            : 3.3
// C/C++ source code generated on  : 19-Jun-2018 19:44:14
//

// Include Files
#include "rt_nonfinite.h"
#include "ikine_6dof.h"
#include "complexTimes.h"

// Function Definitions

//
// Arguments    : double ar
//                double ai
//                double br
//                double bi
// Return Type  : double
//
double complexTimes(double ar, double ai, double br, double bi)
{
  double cr;
  double t3;
  double t4;
  double scaleA;
  double sbr;
  double sbi;
  double scaleB;
  boolean_T finiteScale;
  if ((ai == 0.0) && (bi == 0.0)) {
    cr = 0.0;
  } else {
    cr = ar * bi + ai * br;
    if ((!((!rtIsInf(cr)) && (!rtIsNaN(cr)))) && (!rtIsNaN(ar)) && (!rtIsNaN(ai))
        && (!rtIsNaN(br)) && (!rtIsNaN(bi))) {
      t3 = ar;
      t4 = ai;
      scaleA = rescale(&t3, &t4);
      sbr = br;
      sbi = bi;
      scaleB = rescale(&sbr, &sbi);
      if ((!rtIsInf(scaleA)) && (!rtIsNaN(scaleA)) && ((!rtIsInf(scaleB)) &&
           (!rtIsNaN(scaleB)))) {
        finiteScale = true;
      } else {
        finiteScale = false;
      }

      if (rtIsNaN(cr) || (rtIsInf(cr) && finiteScale)) {
        cr = t3 * sbi + t4 * sbr;
        if (cr != 0.0) {
          cr = cr * scaleA * scaleB;
        } else {
          if ((rtIsInf(scaleA) && ((br == 0.0) || (bi == 0.0))) || (rtIsInf
               (scaleB) && ((ar == 0.0) || (ai == 0.0)))) {
            t3 = ar * bi;
            t4 = ai * br;
            if (rtIsNaN(t3)) {
              t3 = 0.0;
            }

            if (rtIsNaN(t4)) {
              t4 = 0.0;
            }

            cr = t3 + t4;
          }
        }
      }
    }
  }

  return cr;
}

//
// Arguments    : double *re
//                double *im
// Return Type  : double
//
double rescale(double *re, double *im)
{
  double scale;
  double absim;
  scale = std::abs(*re);
  absim = std::abs(*im);
  if (scale > absim) {
    if (*re < 0.0) {
      *re = -1.0;
    } else {
      *re = 1.0;
    }

    *im /= scale;
  } else if (absim > scale) {
    *re /= absim;
    if (*im < 0.0) {
      *im = -1.0;
    } else {
      *im = 1.0;
    }

    scale = absim;
  } else {
    if (*re < 0.0) {
      *re = -1.0;
    } else {
      *re = 1.0;
    }

    if (*im < 0.0) {
      *im = -1.0;
    } else {
      *im = 1.0;
    }
  }

  return scale;
}

//
// File trailer for complexTimes.cpp
//
// [EOF]
//
