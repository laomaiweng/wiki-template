#!/bin/bash

port="$1"
[[ -z "$port" ]] && port=8080
ip="$2"
[[ -z "$ip" ]] && ip=127.0.0.1

tiddlywiki . --server "$port" \$:/core/save/all text/plain text/html "" "" "$ip"
