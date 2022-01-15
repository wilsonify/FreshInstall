# 1/3) Installing via CRAN
# If you are on linux, go to the Source instructions
# You can install all packages using the following lines in an R console:
install.packages('IRkernel')

# To update the IRkernel package, use update.packages()
# 2/3) Making the kernel available to Jupyter
#  warning Important!  warning On OS X, be sure to execute this in R started from the Terminal, not the R App!
#  (This is because the R app doesn’t honor $PATH changes in ~/.bash_profile)

#  If you haven’t done this already, you will have to make Jupyter see the newly installed R kernel by installing a kernel spec.
#  The kernel spec can be installed for the current user with the following line from R:
# To install system-wide, set user to False in the installspec command:
IRkernel::installspec(user = FALSE)

# 3/3) Make useful shortcuts available
# If you use Jupyter lab (and you should!), install Ryan Homer’s text-shortcuts extension:
#```
#jupyter labextension install @techrah/text-shortcuts
#```
# It will make available the familiar shortcuts Ctrl/⌘⇧M to insert %>% and Alt- to insert <-.