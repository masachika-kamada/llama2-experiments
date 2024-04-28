#!/bin/bash

cd llama2-mojo
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin
mojo llama2.mojo stories15M.bin -s 100 -n 256 -t 0.5 -i "Dream comes true this day"
cd ..

cd llama2-py
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin
python3 llama2.py stories15M.bin 0.8 256 "Dream comes true this day"
cd ..

cd llama2-c
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin
make run
./run stories15M.bin -i "Dream comes true this day"
