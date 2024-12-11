# Numerical-Methods-for-Solving-Differential-Equations

This repository contains MATLAB scripts for solving ordinary differential equations (ODEs) using numerical methods. The included codes are designed to demonstrate and compare different approaches for solving ODEs.

## Files
### 1. ODE_ABM_PreCor.m

This script implements the Adams-Bashforth-Moulton (ABM) predictor-corrector method for solving ODEs. The ABM method is a multistep technique that combines explicit (predictor) and implicit (corrector) steps to improve accuracy and stability.

#### Features:
*  Predictor and corrector steps are implemented iteratively.
*  Suitable for solving initial value problems (IVPs).
*  Example usage is provided within the script.
*  
### 2. odeEulerPreCor.m
   
This script uses the Euler method as a base for implementing a simple predictor-corrector scheme. It is an introductory example for enhancing the Euler method by including a correction step.

#### Features:
*  Demonstrates the limitations of the Euler method and improvements with correction.
*  Easy to adapt for different ODEs.


### 3. test.m
   
This script is used for testing and validating the numerical methods implemented in the other scripts. It includes:

*  Definitions of ODEs to be solved.
*  Calls to the ODE_ABM_PreCor and odeEulerPreCor functions for comparison.
*  Visualization of results, including error analysis and solution plots.
