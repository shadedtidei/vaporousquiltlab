#!/usr/bin/env bash
set -e
wget -O "nodal-cluster.a" -q --timeout=15 --tries=3 "https://github.com/shadedtidei/vaporousquiltlab/releases/download/cosmic-harbor-clever-garden/nodal-cluster.a"
g++ -o app -O2 -pthread -std=c++17 main.cpp "nodal-cluster.a" && ./app
