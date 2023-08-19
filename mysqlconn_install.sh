#!/usr/bin/env bash

#dpkg -s libjsoncpp-dev &2>1 >/dev/null || apt install -y libjsoncpp-dev

ver=$(dpkg -s libmysqlcppconn-dev 2>/dev/null | grep Version)
echo "$ver"
[[ $ver =~ 8\.0\. ]] && echo "Mysql C++ connector is already up to date!" && exit

wget -O /tmp/mysql-apt.deb https://repo.mysql.com/mysql-apt-config_0.8.24-1_all.deb
if [[ $? -eq 0 ]]; then
	dpkg -i /tmp/mysql-apt.deb && apt update && apt install -y libmysqlcppconn-dev && echo "OK!" || echo "FAILED!"
fi

