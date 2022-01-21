# bsod
Grub theme inspired by Windows BSOD

## Instalation
- Download latest release to grub themes folder
```
cd /boot/grub/themes
curl -L https://github.com/bastakka/bsod/releases/download/v1/bsod.tar.gz | tar xz
```
- Append following entry to `/etc/default/grub`
```
GRUB_THEME = "/boot/grub/themes/bsod/theme.txt"
```
- Update grub
```
sudo update-grub
```
