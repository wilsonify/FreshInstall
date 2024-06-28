# one way to resolve
# "Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details."
# is to export the GPG key from the deprecated keyring and store it in /usr/share/keyrings.

# Open Terminal (if it's not already open)
# List existing keys:
sudo apt-key list

#    Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
#    /etc/apt/trusted.gpg
#    --------------------
#    pub   rsa4096 2017-05-08 [SCEA] 1EDD E2CD FC02 5D17 F6DA  9EC0 ADAE 6AD2 8A8F 901A
#    uid           [ unknown] Sublime HQ Pty Ltd <support@sublimetext.com>
#    sub   rsa4096 2017-05-08 [S]
#
#    pub   rsa2048 2015-10-28 [SC] BC52 8686 B50D 79E3 39D3  721C EB3E 94AD <BE12 29CF> <- this is the 8 you want
#    From here, we can export a key:

sudo apt-key export <last8pub> | sudo gpg --dearmour -o /usr/share/keyrings/<name>.gpg
# Note: The value comes from the last 8 characters of the pub code.
# The following message will likely appear:
# Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
# Now we can update our apt source file for the repository
# (e.g., /etc/apt/sources.list.d/microsoft.list), adding a signed-by tag:
# deb [arch=amd64 signed-by=/usr/share/keyrings/<name>.gpg] https://packages.microsoft.com/repos/edge/ stable main

# Update apt to confirm the message is gone:
sudo apt update

# Remove the original signature:
sudo apt-key del BE1229CF

# apt will no longer complain.