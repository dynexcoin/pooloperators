# Repository for Dynex Pool Operators
Dynex is a next-generation platform for neuromorphic computing based on a new flexible blockchain protocol.

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
