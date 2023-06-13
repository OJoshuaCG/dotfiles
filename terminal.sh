#!/usr/bin/env bash
### or !/bin/bash

echo " >_ Running..."

# ==========

APP=kitty
DIR=$HOME/.config/$APP
FILE=kitty.conf

echo "    |- ${APP} files..."
[ ! -d $DIR ] && mkdir $DIR

if [ -f $DIR/$FILE ]
then
  mv $DIR/$FILE $DIR/$FILE.backup
fi

cp ./config/$APP/$FILE $DIR
cp -r ./config/$APP/themes $DIR
echo "    |--- ${APP} files finished!"

# ==========

APP="alacritty"
DIR=$HOME/.config/$APP
FILE="alacritty.yml"

echo "    |- ${APP} files..."
[ ! -d $DIR ] && mkdir $DIR

if [ -f $DIR/$FILE ]
then
  mv $DIR/$FILE $DIR/$FILE.backup
fi

cp ./config/$APP/$FILE $DIR
cp -r ./config/$APP/themes $DIR
echo "    |--- ${APP} files finished!"

# ==========

APP="konsole"
DIR=$HOME/.local/share/$APP
FILE="konsole.profile"

echo "    |- ${APP} files..."
[ ! -d $DIR ] && mkdir $DIR

if [ -f $DIR/$FILE ]
then
  mv $DIR/$FILE $DIR/$FILE.backup
fi

cp -r ./config/$APP/. $DIR
echo "    |--- ${APP} files finished!"

# ==========

echo " >_ Success!"
