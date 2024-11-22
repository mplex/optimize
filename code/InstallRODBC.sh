#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get install r-cran-rodbc
apt-get install mssql-tools18 unixodbc-dev
apt update && apt install -y --no-install-recommends software-properties-common dirmngr gnupg
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
R --no-save << EOF
install.packages("odbc", configure.vars=c("LIB_DIR='/usr/local/lib/R/site-library' INCLUDE_DIR='anaconda3/pkgs/unixodbc-2.3.11-h5eee18b_0/include/sql.h''"))
#install.packages("odbc")
#install.packages("RODBC")
EOF
