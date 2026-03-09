#!/bin/bash

function ctrl_c(){
  echo -e "\n[!] Saliendo...\n"
  tput cnorm; exit 1
}

trap ctrl_c INT

function main(){
  tput civis

  MAIN_DIR="/home/$(whoami)/Desktop"
  ORGANIZATION="https://github.com/OracleTelegramBot/"
  REPO="UseState"

  cd $MAIN_DIR
  
  if [[ ! -d "${MAIN_DIR}/${REPO}" ]]; then
    git clone "${ORGANIZATION}${REPO}" > /dev/null 2>&1
  else
    cd $REPO
    git pull
    echo -e "\n[+] Last pull: $(date)\n" >> log.txt
  fi

  tput cnorm
}

main
