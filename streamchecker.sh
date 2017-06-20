#!/bin/bash

curl -sH 'Accept: application/vnd.twitchtv.v5+json' \
	-H 'Client-ID: ReplaceMe' \
	-H 'Cookie: persistent=ReplaceMe;' \
	-X GET 'https://api.twitch.tv/kraken/streams/followed' \
	| jq -r '.streams[] | "\(.viewers)" + "\t" + .channel.display_name'
