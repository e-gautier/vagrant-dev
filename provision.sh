#!/bin/sh

NODEJS_INSTALL="wget -qO- https://deb.nodesource.com/setup_8.x | bash - && apt install -y nodejs"

case "$1" in
  nodejs)
  eval $NODEJS_INSTALL
  ;;
  *)
  eval $NODEJS_INSTALL
  ;;
esac