#!/bin/bash

directory_to search="directory/path"

find "$directory_to_search"-type -f -exec md5sum {} + | sort |unique -d -w32| awk '{print $2}'|xargs rm
