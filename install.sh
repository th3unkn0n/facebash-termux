#!/bin/bash
gr="\e[1;32m"
if [[ command -v tor > /dev/null 2>&1;
 	command -v curl > /dev/null 2>&1;
 	command -v torsocks > /dev/null 2>&1 ]]; then
 		echo "$gr[+] All Done !!\n[+] You Can Run ./facebash.sh"
 	else pkg upgrade -y && pkg update -y
 		echo "$gr[+] Installing Requierd Files..."
 		pkg install -y tor curl torsocks
 		echo "$gr[+] All Done !!\n[+] You Can Run ./facebash.sh"
fi
