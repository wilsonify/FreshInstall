
# patch for glibc 2.26 to avoid errors in compiling with CUDA(NVCC)

glibc > 2.26 has a new feature, i.e. "128-bit floating point"
which causes an incompatibility between nvcc and glibc

```
/usr/include/x86_64-linux-gnu/bits/floatn.h(74): error: invalid argument to attribute "__mode__"
/usr/include/x86_64-linux-gnu/bits/floatn.h(86): error: identifier "__float128" is undefined
2 errors detected in the compilation of "/tmp/tmpxft_0000f87d_00000000-12_bodysystemcuda.compute_70.cpp1.ii".
```

proposed patch to /usr/include/x86_64-linux-gnu/bits/floatn.h
which lets NVCC (CUDA's compiler) avoid __float128 (NVCC does support neither 8.0 nor 9.0).

-------------------------------------------------------------------------------------
*** floatn.h-dist 2017-09-04 16:34:21.000000000 +0900
--- floatn.h 2017-09-14 21:46:15.334033614 +0900
***************
*** 28,34 ****
     support, for x86_64 and x86. */
  #if (defined __x86_64__ \
       ? __GNUC_PREREQ (4, 3) \
! : (defined __GNU__ ? __GNUC_PREREQ (4, 5) : __GNUC_PREREQ (4, 4)))
  # define __HAVE_FLOAT128 1
  #else
  # define __HAVE_FLOAT128 0
--- 28,35 ----
     support, for x86_64 and x86. */
  #if (defined __x86_64__ \
       ? __GNUC_PREREQ (4, 3) \
! : (defined __GNU__ ? __GNUC_PREREQ (4, 5) : __GNUC_PREREQ (4, 4))) \
! && !defined(__CUDACC__)
  # define __HAVE_FLOAT128 1
  #else
  # define __HAVE_FLOAT128 0
