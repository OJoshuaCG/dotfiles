#!/bin/bash

echo " >_ Running..."
sleep 2
# ==========

APP="kitty"
FOLDER="~/.config/${APP}"
CONF_FILE="kitty.conf"

echo "    |- kitty files..."
[ ! -d $FOLDER ] && mkdir $FOLDER

if [ -f "${FOLDER}/${CONF_FILE}" ]
then
  mv "${FOLDER}/${CONF_FILE}" "${FOLDER}/${CONF_FILE}.backup"
fi

cp "./config/${APP}/${CONF_FILE}" $FOLDER
cp -r "./config/${APP}/themes" $FOLDER
echo "    |--- kitty files finished!"
sleep 2
# ==========

APP="alacritty"
FOLDER="~/.config/${APP}"
CONF_FILE="alacritty.yml"

echo "    |- alacritty files..."
[ ! -d $FOLDER ] && mkdir $FOLDER

if [ -f "${FOLDER}/${CONF_FILE}" ]
then
  mv "${FOLDER}/${CONF_FILE}" "${FOLDER}/${CONF_FILE}.backup"
fi

cp "./config/${APP}/${CONF_FILE}" $FOLDER
cp -r "./config/${APP}/themes" $FOLDER
echo "    |--- alacritty files finished!"
sleep 2
# ==========

APP="konsole"
FOLDER="~/.local/share/${APP}"
CONF_FILE="konsole.profile"

echo "    |- konsole files..."
[ ! -d $FOLDER ] && mkdir $FOLDER

if [ -f "${FOLDER}/${CONF_FILE}" ]
then
  mv "${FOLDER}/${CONF_FILE}" "${FOLDER}/${CONF_FILE}.backup"
fi

cp -r "./config/${APP}/" $FOLDER
echo "    |--- konsole files finished!"
sleep 2
# ==========

echo " >_ Success!"