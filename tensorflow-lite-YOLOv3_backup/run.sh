#!/bin/bash
chmod 777 setup.sh
sudo sh setup.sh
source example_twain_env/bin/activate
python tflite_example.py