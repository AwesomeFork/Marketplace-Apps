#!/usr/bin/env bash

ZIP_FILE="https://antmedia.io/linode/antmedia_2.5.3.zip"
INSTALL_SCRIPT="https://raw.githubusercontent.com/ant-media/Scripts/master/install_ant-media-server.sh"

wget -q --no-check-certificate $ZIP_FILE -O /tmp/antmedia.zip && wget -q --no-check-certificate $INSTALL_SCRIPT -P /tmp/

if [ $? == "0" ]; then
  bash /tmp/install_ant-media-server.sh -i /tmp/antmedia.zip
else
  logger "There is a problem in installing the ant media server. Please send the log of this console to contact@antmedia.io"
  exit 1
fi
