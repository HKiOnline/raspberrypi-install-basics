# Homebridge Installation Script
# Henri Kesseli, July 2022
# 
# More information at:
# https://github.com/homebridge/homebridge/wiki/Install-Homebridge-on-Raspbian


# Add the Homebridge Repository GPG key:
curl -sSfL https://repo.homebridge.io/KEY.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/homebridge.gpg  > /dev/null

# Add the Homebridge Repository to the system sources
echo "deb [signed-by=/usr/share/keyrings/homebridge.gpg] https://repo.homebridge.io stable main" | sudo tee /etc/apt/sources.list.d/homebridge.list > /dev/null

# Update repositories
sudo apt-get update

# Install Homebridge
sudo apt-get install homebridge

# Next steps instructions
echo "Login to the Homebridge UI at http://<ip address of your server>:8581"
hostname -I
