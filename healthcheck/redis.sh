#!/bin/sh
# http://redis.io/commands
# We use persistent connections, so the clients should always be in the list

##### Required 
####### Redis endpoint
REDIS=$1

####### Internal IP of Magento application servers
MAGENTO=$2

redis-cli config get maxmemory (we need to make sure this is something other than 0)
redis-cli config get maxmemory-policy (we need to make sure this is something)
redis-cli -h $REDIS client list
