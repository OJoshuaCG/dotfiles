#!/bin/bash

echo " >_ Running..."

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

# ==========

echo " >_ Success!"