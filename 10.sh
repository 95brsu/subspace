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
  echo "----10.06.2022--------------------------------------------------------------------"
}

function colors {
  GREEN="\e[1m\e[32m"
  RED="\e[1m\e[39m"
  NORMAL="\e[0m"
}


function update {

cd $HOME
wget -O subspace-node https://github.com/subspace/subspace/releases/download/gemini-1b-2022-jun-08/subspace-node-ubuntu-x86_64-gemini-1b-2022-jun-08
wget -O subspace-farmer https://github.com/subspace/subspace/releases/download/gemini-1b-2022-jun-08/subspace-farmer-ubuntu-x86_64-gemini-1b-2022-jun-08
chmod +x subspace-node
chmod +x subspace-farmer
mv subspace-node /usr/local/bin/
mv subspace-farmer /usr/local/bin/
systemctl restart subspaced
}



colors
line
line
echo -e "${RED}Устанавливаем обновление subspace от 8 june${NORMAL}"
update
line
line
echo -e "${RED}Скрипт завершил свою работу!!!Извините за внимание! <<< через минуту systemctl restart subspaced-farmer  >>> ${NORMAL}"
