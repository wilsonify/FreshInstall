# This page gives links to the available binary packages for CodeLite 16.0.
# Its RAD plugin wxCrafter, which is now Free Open-Source Software,
# is included in all the CodeLite packages.

# Note that the CodeLite packages incorporate the required wxWidgets libraries (wx3.1.6),
# so there is no need to install wxWidgets too.
# Of course you can if you wish, and you'll need to do so to build apps against wxWidgets.
# CodeLite doesn't (yet) require wx3.1 though,
# and you can still build your own against wx3.0.x if you prefer.

# Ubuntu 16.04 (xenial) and later have official CodeLite packages.
# Therefore, to avoid a name-clash, our CodeLite packages have unofficial appended to the name.
# To download CodeLite for Debian based systems (Debian / Mint / Ubuntu etc):
# Add the CodeLite public key to avoid warnings or worse from apt/aptitude

sudo apt-key adv --fetch-keys http://repos.codelite.org/CodeLite.asc

# Now let apt know that the repositories exist by adding the proper line from Table 1 or 2:
# If you use an apt front-end e.g. synaptic, tell it to Add a repository, using as data the appropriate entry from the tables below
# If you do things by hand, add the appropriate URLs from the tables to /etc/apt/sources.list (you need to become superuser) :

# For example, if you use Ubuntu jammy (22.04),
# either open /etc/apt/sources.list in an editor (as superuser) and append the proper line from Table 1,
# or else use apt-add-repository in a terminal:

sudo apt-add-repository 'deb https://repos.codelite.org/ubuntu/ focal universe'

#Table 1: CodeLite repositories (GTK+3):
#Distro/release 	Lines to append
#debian buster 	deb https://repos.codelite.org/debian/ buster devel
#debian bullseye 	deb https://repos.codelite.org/debian/ bullseye devel
#ubuntu focal 	deb https://repos.codelite.org/ubuntu/ focal universe
#ubuntu impish 	deb https://repos.codelite.org/ubuntu/ impish universe
#ubuntu jammy 	deb https://repos.codelite.org/ubuntu/ jammy universe

# You then need to update your repositories.
# If you're doing things by hand, do:
sudo apt update
sudo apt install codelite