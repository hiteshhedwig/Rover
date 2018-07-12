//
// File: asin.cpp
//
// MATLAB Coder version            : 3.3
// C/C++ source code generated on  : 19-Jun-2018 19:44:14
//

// Include Files
#include "rt_nonfinite.h"
#include "ikine_6dof.h"
#include "asin.h"
#include "asinh.h"
#include "complexTimes.h"
#include "sqrt1.h"
#include "ikine_6dof_rtwutil.h"

// Function Definitions

//
// Arguments    : creal_T *x
// Return Type  : void
//
void b_asin(creal_T *x)
{
  creal_T v;
  creal_T u;
  double tmp;
  double t1;
  double t2;
  double scaleA;
  double sbr;
  double sbi;
  double scaleB;
  boolean_T finiteScale;
  if ((x->im == 0.0) && (!(std::abs(x->re) > 1.0))) {
    x->re = std::asin(x->re);
    x->im = 0.0;
  } else {
    v.re = 1.0 + x->re;
    v.im = x->im;
    b_sqrt(&v);
    u.re = 1.0 - x->re;
    u.im = 0.0 - x->im;
    b_sqrt(&u);
    if ((u.im == 0.0) && (v.im == 0.0)) {
      tmp = u.re * v.re;
    } else {
      tmp = u.re * v.re - u.im * v.im;
      if ((!((!rtIsInf(tmp)) && (!rtIsNaN(tmp)))) && (!rtIsNaN(u.re)) &&
          (!rtIsNaN(u.im)) && (!rtIsNaN(v.re)) && (!rtIsNaN(v.im))) {
        t1 = u.re;
        t2 = u.im;
        scaleA = rescale(&t1, &t2);
        sbr = v.re;
        sbi = v.im;
        scaleB = rescale(&sbr, &sbi);
        if ((!rtIsInf(scaleA)) && (!rtIsNaN(scaleA)) && ((!rtIsInf(scaleB)) && (
              !rtIsNaN(scaleB)))) {
          finiteScale = true;
        } else {
          finiteScale = false;
        }

        if (rtIsNaN(tmp) || (rtIsInf(tmp) && finiteScale)) {
          tmp = t1 * sbr - t2 * sbi;
          if (tmp != 0.0) {
            tmp = tmp * scaleA * scaleB;
          } else {
            if ((rtIsInf(scaleA) && ((v.re == 0.0) || (v.im == 0.0))) ||
                (rtIsInf(scaleB) && ((u.re == 0.0) || (u.im == 0.0)))) {
              t1 = u.re * v.re;
              t2 = u.im * v.im;
              if (rtIsNaN(t1)) {
                t1 = 0.0;
              }

              if (rtIsNaN(t2)) {
                t2 = 0.0;
              }

              tmp = t1 - t2;
            }
          }
        }
      }
    }

    t1 = complexTimes(u.re, -u.im, v.re, v.im);
    b_asinh(&t1);
    x->re = rt_atan2d_snf(x->re, tmp);
    x->im = t1;
  }
}

//
// File trailer for asin.cpp
//
// [EOF]
//
