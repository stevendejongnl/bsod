GRUB_FILE = /etc/default/grub
GRUB_THEME = /boot/grub/themes/bsod/theme.txt

install:
	sudo cp -r ./ /boot/grub/themes/bsod
	grep -q "^GRUB_THEME=" $(GRUB_FILE); \
	if [ $$? -eq 0 ]; then \
    sudo sed -i '/^GRUB_THEME=/d' $(GRUB_FILE); \
  fi
	echo "GRUB_THEME=\"$(GRUB_THEME)\"" | sudo tee -a $(GRUB_FILE) > /dev/null
	sudo grub-mkconfig -o /boot/grub/grub.cfg
