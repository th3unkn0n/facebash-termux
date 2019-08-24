#!/bin/bash
chmod +x *
if [[ command -v tor > /dev/null 2>&1;
 	command -v curl > /dev/null 2>&1;
 	command -v torsocks > /dev/null 2>&1 ]]; then
 		clear && echo "[+] All Done !!\n[+] You Can Run ./facebash.sh"
 	else pkg upgrade -y && pkg update -y
 		clear && echo "[+] Installing Requierd Files..."
 		pkg install -y tor curl torsocks >> /dev/null
 		clear && echo "[+] All Done !!\n[+] You Can Run ./facebash.sh"
fi
