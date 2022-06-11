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
  echo "----11.06.2022--------------------------------------------------------------------"
}

function colors {
  GREEN="\e[1m\e[32m"
  RED="\e[1m\e[39m"
  NORMAL="\e[0m"
}


function update {

sudo -i
cd $HOME/subspace
sed -i.bak "s/gemini-1b-2022-jun-08/gemini-1b-2022-jun-10/" docker-compose.yml
docker-compose up -d
}



colors
line
echo -e "${RED}Устанавливаем обновление subspace от 10 june(docker)${NORMAL}"
update
line
echo -e "${RED}Скрипт завершил свою работу!!!Извините за внимание! <<< проверить логи: cd $HOME/subspace && docker-compose logs --tail=1000 -f  >>> ${NORMAL}"
