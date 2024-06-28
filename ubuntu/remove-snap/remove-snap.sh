

# if you would like to completely remove everything related to snaps on your machine,
# follow these steps:
# List all the snaps installed on your system
snap list --all | awk 'NR>1 {print $1}' | while read -r snap_name; do
    notes=$(snap info "$snap_name" | awk '/^notes:/ {print $2}')
    if [[ "$notes" == "base" ]]; then
        base_snaps+=("$snap_name")
    else
        non_base_snaps+=("$snap_name")
    fi
done

# Remove non-base snaps first
for snap_name in "${non_base_snaps[@]}"; do
    sudo snap remove "$snap_name"
done

# Remove base snaps last
for snap_name in "${base_snaps[@]}"; do
    sudo snap remove "$snap_name"
done

# Verify there are no more snaps installed
snap list
# No snaps are installed yet. Try 'snap install hello-world'.

# Get a list of mounted snap-related filesystems
snap_mounts=$(mount | grep -E "/var/lib/snapd/snaps|/var/lib/snapd/snap" | awk '{print $3}')

# Unmount each snap-related filesystem
for mount_point in $snap_mounts; do
    sudo umount "$mount_point"
done

#  Remove snapd from your system with
sudo apt purge snapd

# Remove any snap-related directories that might remain:
rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd
