#!/usr/bin/env bash

mkdir -p build
cmake -S . -B build
cd build
make -j$(nproc)

GREEN='\033[0;32m'
NC='\033[0m'
printf "${GREEN}Succefully builded project!${NC}\n###########################\n\n"

mv fps-project ..
cd ..

chmod +x fps-project

./fps-project