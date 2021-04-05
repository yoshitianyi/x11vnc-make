# Please run as a super-user.
# Omitting PHONY declaration.
daemon-install:
	cp x11vnc.service /lib/systemd/system
	systemctl daemon-reload
lightdm:
	apt install lightdm
	dpkg-reconfigure lightdm
x11vnc:
	apt install x11vnc
password:
	x11vnc -storepasswd
	mv ~/.vnc/passwd /etc/x11vnc.pass