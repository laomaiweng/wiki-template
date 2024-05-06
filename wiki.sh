#!/bin/bash

port="$1"
[[ -z "$port" ]] && port=8080
ip="$2"
[[ -z "$ip" ]] && ip=127.0.0.1
root='$:/core/save/all'
[[ "$3" == lazy ]] && root='$:/core/save/lazy-all'

tiddlywiki . --listen host="$ip" port="$port" root-tiddler="$root" gzip=yes
