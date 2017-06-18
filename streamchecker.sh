#!/bin/bash

curl -sH 'Accept: application/vnd.twitchtv.v5+json' \
	-H 'Client-ID: ReplaceMe' \
	-H 'Cookie: persistent=ReplaceMe;' \
	-X GET 'https://api.twitch.tv/kraken/streams/followed' \
	| grep -Eo '"display_name":[^,]*|"viewers":[^,]*' \
	| paste -d '\t' - -
