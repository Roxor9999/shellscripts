#!/bin/bash

curl -sX GET 'https://api.overrustle.com/api' \
	| jq -r '.streams | to_entries | sort_by(.value*-1)[] | select(.value>9) | "\(.value)" + "\t" + .key'
