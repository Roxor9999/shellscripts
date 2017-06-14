#!/bin/bash

curl -H 'Accept: application/vnd.twitchtv.v5+json' \
	-H 'Client-ID: ReplaceMe' \
	-H 'Cookie: ReplaceMe' \
	-X GET 'https://api.twitch.tv/kraken/streams/followed' \
	| grep -o '"display_name":[^,]*,\|"viewers":[^,]*,' \
	| paste -d ' ' - -
