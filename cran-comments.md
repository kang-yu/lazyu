cran-comments
================

Submission Comments:
====================

This is a cran-submission comments file, which is checked into git, and listed in .Rbuildignore (so it’s not included in the package).

Test environments
-----------------

R version 3.4.4 (2018-03-15) Platform: x86\_64-w64-mingw32/x64 (64-bit) Running under: Windows &gt;= 8 x64 (build 9200)

R CMD check results copy follow:
--------------------------------

-- R CMD check results --------------------------------------------------------------------------------------------------- lazyu 0.1.0 ---- Duration: 21.7s

> checking whether package 'lazyu' can be installed ... WARNING See below...

> checking dependencies in R code ... WARNING '::' or ':::' import not declared from: 'plyr'

> checking Rd files ... WARNING prepare\_Rd: bad markup (extra space?) at append\_list.Rd:19:16

> checking R code for possible problems ... NOTE add\_variable\_monthweek: no visible global function definition for '.' Undefined global functions or variables: .

0 errors √ | 3 warnings x | 1 note x
