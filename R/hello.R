# Hello, world! this is my second attempt to create my own R package.
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Object Documentation:      'Cmd + Shift + D'
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
#
# Using Git for sharing:
#
#   Open a shell: run 'git init' (if not selected 'Create a Git repository'
#   when create the Rstudio project)
#
# Also instead of adding each file manually, we could do something like:
#
#   use 'git add --all' OR 'git add -A' in shell
#
# This will also remove any files not present or deleted (Tracked files
# in the current working directory which are now absent). If you only
# want to add files which are tracked and have changed, you would want to do:
#
#   'git add -u'
#
# In the Shell, use 'git status' to see an overview of changes and 'git diff' to
# show detailed differences.
#
# RStudio, staging and committing are done in the same place, the commit window,
# which you can open by clicking  or by pressing 'Ctrl + Alt + m'
#
# Synchronising with GitHub:
#   1: Create a new repo on GitHub: Give it the same name as your package,
#   and include the package title as the repo description
#
#   2: Open a shell, then follow the instructions on the new repo page.
#   They’ll look something like this:
#
#   'git remote add origin git@github.com:hadley/r-pkgs.git'
#   'git push -u origin master'
#
#   3: Modify DESCRIPTION to add URL and BugReports fields that link to your new GitHub site.
#   For example, dplyr has:
#
#     URL: http://github.com/hadley/dplyr
#     BugReports: http://github.com/hadley/dplyr/issues
#
#   4: Add README.me by using 'devtools::use_readme_rmd()'

hello <- function() {
  print("Hello, welcome!")
}
