# Work around for incorrect resolution during unity-greeter
# copying the monitors.xml configuration.
# LightDM stores the configured monitors in an XML file, located in ~/.config/,
# which specifies the layout and set resolution of displays.
# If your environment after login is correct, you can just copy that file to another directory
# In the world of Linux, though, it’s probably better to use a link,
# so if we ever change our resolution it’ll be reflected at the login screen.

sudo mkdir -p /var/lib/lightdm/.config
sudo ln ~/.config/monitors.xml /var/lib/lightdm/.config/monitors.xml

# Apparently symbolic links do not work, hence the absence of a -s.
# after doing this, everything worked and had the correct resolution.
# No more resizing of the desktop background image upon login,
