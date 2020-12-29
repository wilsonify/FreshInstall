echo "Install the NVIDIA driver"
echo "remove potential previously installed NVIDIA drivers"
sudo apt-get purge *nvidia*
sudo apt autoremove

echo "Next, let's install the latest driver:"
sudo apt install nvidia-driver-455

echo "After this, we need to restart the computer to finalize the driver installation."
echo "Next we can verify whether the drive was successfully installed
This should contain the following or similar:
    NVIDIA-SMI 455.28 Driver Version: 455.28
"
nvidia-smi

