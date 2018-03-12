[![Build Status](https://travis-ci.org/perdoperdo/rhinotools.svg?branch=master)](https://travis-ci.org/perdoperdo/rhinotools)
[![codecov](https://codecov.io/gh/perdoperdo/rhinotools/branch/master/graph/badge.svg)](https://codecov.io/gh/perdoperdo/rhinotools)

# Rhinotools
Experiments in CI for R

## Coverage
Continuous integration with [Travis CI](https://travis-ci.org), code coverage using the `covr` package via [codecov](https://codecov.io/).

Badges obtained via links on these sites that can be added to this `README.md` so the status shows up right in the github page.

Configuration of both via the travis config file in the project `.travis.yml`. In it's most simple form that would look like:

```yml
language: r
cache: packages

r_packages:
  - covr

after_success:
  - Rscript -e 'library(covr); codecov()'
```

It seems possible to support multiple languages in one travis configuration using the `matrix:include` feature, see [SO](https://stackoverflow.com/questions/27644586/how-to-set-up-travis-ci-with-multiple-languages). This will be useful when supporting both R, Python and other language in the same repository.

## Packaging
For R, packages are a great way to ship code, examples, tests etc. The best tutorial is the one from Hadley Wickham: [R Packages](http://r-pkgs.had.co.nz/intro.html).

To build and develop the package itself, use Wickham's `devtools`.

Cmd-SHIFT-E = complete checking of the package build

Cmd-SHIFT-B = package install

To just install and use the R package from github, use `install_github("perdoperdo/rhinotools")`. If the R package lives in a subdir use `install_github("perdoperdo/rhinotools/R")`. The vignettes contain R notebooks (Rmd files) with extensive examples. These would typically the things we expect users to extend and -hopefully- contribute back. Supporting functions/tools would be in the package itself.

## Unit testing
The `testthat` package proves very useful for unittesting and is fully integrated with the CI pipeline. The tests live
in tests/testthat and by default have names starting with 'test' and ending with '.R'.

Cmd-SHIFT-T = run tests

## Check coverage locally

(TODO)

## Documentation
The man files are generated with `roxygen2` which provides a javadoc-style way to annotate code.

Cmd-SHIFT-D = generate doc
