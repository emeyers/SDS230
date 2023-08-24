
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SDS230: Data Exploration and Analysis

<!-- badges: start -->

<!-- badges: end -->

Class material and functions for S\&DS 230: Data Exploration and
Analysis

## Installing the SDS230 package

To install the SDS230 package that contains functions that are useful
for the class run the function below

Note: we recommend you cut and paste all these commands to avoid typos.

``` r
install.packages("devtools")
devtools::install_github("emeyers/SDS230")
```

## Initial setup using the SDS230 package

Once you have installed the SDS230 package, you can use this package to
install other packaged required by the class as well as LaTeX using the
`SDS230:::initial_setup()` function shown below.

Notes:

1.  If any dialog boxes pop up, just click “ok” on them to proceed.
2.  This function might take several minutes to run so please be
    patient.
3.  If it asks you to update any existing package you can do so
    (recommended) or you can skip this.
4.  When the function is done running, if it asks you to restart R,
    please close and then reopen R Studio.

<!-- end list -->

``` r
SDS230:::initial_setup()
```

#### Installing LaTeX 

If you are installing the SDS230 package **on your own computer**, please run the following command to install LaTeX. If you are installing the SDS230 package on the Grace cluster, you should skip this step.

Note: the Grace cluster is an optional way to use RStudio on a remote cluster of computers owned by Yale.  We will discuss the option of using this cluster instead of your own computer in the beginning of the semester, so if we have not discussed this yet in class and you are trying to install the SDS230 package on your computer, then you should run the command below. 

``` r
tinytex::install_tinytex()
```


#### Testing LaTeX has been installed

To test that LaTeX is wokring correctly on your system (i.e., on either your own computer or the Grace cluster) you can run the following command:

``` r
tinytex:::is_tinytex()
#> [1] TRUE
```

If the function returns TRUE, then you have successfully installed LaTeX.


## Class material

All class material is in the
[ClassMaterial](https://github.com/emeyers/SDS230/tree/master/ClassMaterial)
directory. In particular the
[ClassMaterial/slides](https://github.com/emeyers/SDS230/tree/master/ClassMaterial/slides)
directory contains the class slides which can be useful to review what
was covered in class.
