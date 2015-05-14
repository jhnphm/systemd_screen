#! /bin/sh
echo "Enable lingering for $USER:"
# Enable lingering user systemd, so user instance of systemd starts on boot instead of login
sudo loginctl enable-linger $USER
 
# Install screen@ service file
mkdir -p ~/.config/systemd/user
cp screen@.service ~/.config/systemd/user

# Enable for weechat
systemctl --user enable screen@weechat.service

