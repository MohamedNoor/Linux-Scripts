#!/bin/bash

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]
then
      echo "you are the root."
else
      echo "you are NOT the root."
fi
