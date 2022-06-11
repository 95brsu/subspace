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
  echo "----13.06.2022--------------------------------------------------------------------"
}

function colors {
  GREEN="\e[1m\e[32m"
  RED="\e[1m\e[39m"
  NORMAL="\e[0m"
}


function delete {

cd $HOME/subspace
docker-compose down -v
cd $HOME && rm -rf $HOME/subspace/
}



colors
line
echo -e "${RED}Удаляем subspace (docker)${NORMAL}"
delete
line
echo -e "${RED}Скрипт завершил свою работу!!!Извините за внимание! Удаление успешно завершено! ${NORMAL}"
