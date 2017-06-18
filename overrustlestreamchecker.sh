#!/bin/bash

curl -sX GET 'https://api.overrustle.com/api/' \
	| grep -o '"streams":{[^}]*' \
	| grep -Eo '"\/[^:]*:[^,]{2,},' \
	| sort -t : -rnk2
