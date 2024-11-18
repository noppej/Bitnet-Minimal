#!/bin/bash
apt-get update && apt-get install -y passwd grep python3 python3-pip cmake ccache lsb-release software-properties-common
apt upgrade -y
rm -rf /var/lib/apt/lists/* 
wget -qO- https://apt.llvm.org/llvm.sh | bash -s -- 18
rustup component add clippy 
rustup component add rustfmt 
rustup component add rust-analyzer 
wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-py311_24.9.2-0-Linux-$(arch).sh -O ~/miniconda.sh 
/bin/bash ~/miniconda.sh -b -p /opt/conda
ln -sf /opt/conda/bin/conda /usr/bin
tail -f /dev/null
