#!/system/bin/sh
if ! applypatch -c MTD:recovery:2048:14b8bbeb8691ef78e705cecc319cbd243be091c7; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:2031616:c6ed93fabcdc8d4e2a09409fe69b3f48f8e06d71 MTD:recovery e70ccbf0f520f9e32aa6bd4d9bf1dcd70221a736 3360768 c6ed93fabcdc8d4e2a09409fe69b3f48f8e06d71:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
