#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update && apt install -y --no-install-recommends software-properties-common dirmngr gnupg
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
R --no-save << EOF
remove.packages("viadw", lib=.libPaths()[1])
#remove.packages("sdam")
#devtools::install_github("mplex/cedhar", subdir="pkg/sdam")
EOF
