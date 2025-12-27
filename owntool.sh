#!/usr/bin/bash

# COLORS
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"
#
# ./owntool.sh https://youtube.com/ <wordlist>
#     0               1                 2
#  $#2 ===> 0 or >0
clear
banner="${RED}
	               _____         _
	 ___ _ _ _ ___|_   _|___ ___| |
	| . | | | |   | | | | . | . | |
	|___|_____|_|_| |_| |___|___|_|${RESET}
"

echo -e "$banner"
echo "--------------------------------------------------------"
echo -e "	     ${YELLOW}prod by${RESET} -->> ${GREEN}HackAnon${RESET}"
echo "--------------------------------------------------------"
echo -e "  ${GREEN}Usage:${RESET} $0 <URL> <WORDLIST:src/common.txt>"
echo "--------------------------------------------------------"

# start tool
if [[ ${#2} -gt 0 ]]; then
	python src/Hackanon.py $1 $2
else
	python src/Hackanon.py $1 src/common.txt
fi
# end
