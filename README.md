# Repository for Dynex Pool Operators
Dynex is a next-generation platform for neuromorphic computing based on a new flexible blockchain protocol.

## Latest Versions:

- Dynex PoolService V.46.1 (link was provided on channel)
- Dynex MallobService v.29.1 (link was provided on channel)

## Requirements:

PoolService v46 onwards requires C++20 on Ubuntu 20:
```
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt install -y g++-11
```

- [Example config.js](https://github.com/dynexcoin/pooloperators/blob/main/config.js)
- [CPPCMS Build Sources](https://github.com/dynexcoin/pooloperators/blob/main/cppcms.tar.gz)
- [Database Driver Install Script](https://github.com/dynexcoin/pooloperators/blob/main/mysqlconn_install.sh)

## Example batch loop

```
while true
do
    export LD_LIBRARY_PATH=/usr/local/lib
    ./poolservice -c config.js -pool_uuid <YOURPOOLUUID> > poolservice.log
done
```
