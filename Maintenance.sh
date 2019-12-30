#!/bin/bash

echo -e "\n$(date "+%d-%m-%Y --- %T") --- start working\n"

apt-get update
apt-get upgrade

apt-get -y autoremove
apt-get autoclean

echo -e "\n$(date "+%T") \t script terminated now"
