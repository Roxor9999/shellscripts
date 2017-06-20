#!/bin/bash

curl -sX GET 'https://api.overrustle.com/api' \
	| jq -r '.streams | to_entries | sort_by(.value) | reverse[] | select(.value>9) | "\(.value)" + "\t" + .key'
