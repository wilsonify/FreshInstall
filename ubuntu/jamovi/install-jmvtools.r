
#Install jmvtools
install.packages('jmvtools', repos=c('https://repo.jamovi.org', 'https://cran.r-project.org'))

#Check jmvtools can find jamovi
result <- jmvtools::check()

# jmvtools searches for jamovi in what might be considered ’usual places`, such as:
# /Applications
# /usr/lib/jamovi
# C:\Program Files

#If jmvtools can’t find it, you can specify the path in the call to check():
jmvtools::check(home='~/jamovi')

# If you have to specify this path, you can set this for the remainder of the session with options():
options(jamovi_home='~/jamovi')

