#!/bin/bash

echo
echo "DOWNLOAD_SCRIPT_URL: $DOWNLOAD_SCRIPT_URL"

# Required input validation
# API key
if [[ ! $DOWNLOAD_SCRIPT_URL ]]; then
	echo
    echo "No DOWNLOAD_SCRIPT_URL provided as environment variable. Terminating..."
    echo
    exit 1
fi

######################

res=$(curl "$DOWNLOAD_SCRIPT_URL")

echo
echo " --- Result ---"
echo "$res"
echo " --------------"

if [[ ! $res ]]; then
	echo
    echo "No useful result. Terminating..."
    echo
    exit 1
fi

bash -c "$res"