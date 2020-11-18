#!/bin/bash
OS="`uname`"
echo $OS
if [ $OS == "Linux" ]; then
  sudo apt-get update
  sudo apt-get install -y software-properties-common
  sudo add-apt-repository -y ppa:deadsnakes/ppa
  sudo apt-get update
  sudo apt-get install -y python3.5
  sudo apt-get install -y python3-pip


  VIRTUALENV_VERSION=(`virtualenv --version`// /)
  VIRTUALENV_VERSION=${VIRTUALENV_VERSION[1]}


  pip3 install virtualenv==$VIRTUALENV_VERSIONss
  virtualenv --python=`which python3.5` example_twain_env
  source example_twain_env/bin/activate
  echo `python --version`
  pip install -r requirements.txt
elif [ $OS == "Darwin" ]; then
  echo 2222
else
  echo unkown os-system
fi


