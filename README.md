# Silent Error in MATLAB: Multiplying Empty Array by Scalar

This repository demonstrates a subtle error in MATLAB that can occur when performing arithmetic operations on empty arrays within conditional statements.  The error manifests silently, leading to unexpected behavior and potentially incorrect results. The error occurs when an empty array is multiplied by a scalar in a scenario where an empty array may be returned from a function that's subsequently multiplied. 

## Reproducing the Error

The `bug.m` file contains a function `myFunction` that showcases the issue.  The function conditionally returns an empty array ([]). When this function is called with an argument that triggers the empty array return, and that returned array is then multiplied by a scalar in the subsequent line, the multiplication operates successfully without issue, but it does nothing useful. It silently leads to an incorrect result or unexpected behaviour. 

## Solution

The `bugSolution.m` file provides a corrected version of the function. It uses `isempty` function to check if the array is empty before performing the multiplication, preventing the silent error.