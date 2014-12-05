#!/bin/bash

cd `dirname .`;

docker build -t squid-privoxy-shadowsocks  .
