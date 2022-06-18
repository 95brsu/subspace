#!/bin/bash

echo "=================================================="
echo -e "\033[0;35m"
echo " ::::    :::  ::     ::  :::::::::   ::::::::   ";
echo " :+:+:   :+: :+:    :+:     :+:     :+:    :+:  ";
echo " :+:+:+  +:+ +:+    +:+     +:+     +:+         ";
echo " +#+ +:+ +#+ +#+    +:+     +:+     +#++:++#++  ";
echo " +#+  +#+#+# +#+    +#+     +#+             +#+ ";
echo " #+#   #+#+# #+#    #+#     #+#     #+#     #+# ";
echo " ###    ####  ########    ######    ########    ";
echo -e "\e[0m"
echo "=================================================="

sleep 2

function line {
  echo "----18.06.2022--------------------------------------------------------------------"
}

function colors {
  GREEN="\e[1m\e[32m"
  RED="\e[1m\e[39m"
  NORMAL="\e[0m"
}


function update {

cd $HOME
sudo apt update && sudo apt install ocl-icd-opencl-dev libopencl-clang-dev -y
systemctl stop subspaced subspaced-farmer
wget -O subspace-node https://github.com/subspace/subspace/releases/download/gemini-1b-2022-jun-13/subspace-node-ubuntu-x86_64-gemini-1b-2022-jun-13
wget -O subspace-farmer https://github.com/subspace/subspace/releases/download/gemini-1b-2022-jun-13/subspace-farmer-ubuntu-x86_64-gemini-1b-2022-jun-13
chmod +x subspace-node
chmod +x subspace-farmer
mv subspace-node /usr/local/bin/
mv subspace-farmer /usr/local/bin/
systemctl restart subspaced
}



colors
line
echo -e "${RED}Устанавливаем обновление subspace от 18 june${NORMAL}"
update
line
echo -e "${RED}Скрипт завершил свою работу!!!Извините за внимание! <<< через 30 сек systemctl restart subspaced-farmer  >>> ${NORMAL}"
