# systemd_screen
Launch Weechat or other commands via user systemd upon startup 
Derived from screen unit file at https://wiki.archlinux.org/index.php/GNU_Screen, but template perameterized for application instead of user

## Usage

```shell
# Enable lingering user systemd, so user instance of systemd starts on boot instead of login
sudo loginctl enable-linger $USER
 
# Install screen@ service file
mkdir -p ~/.config/systemd/user
cp screen@.service ~/.config/systemd/user

# Enable for weechat
systemctl --user enable screen@weechat.service

# To disable 
systemctl --user disable screen@weechat.service
```
