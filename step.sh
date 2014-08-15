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

echo
echo "--Saving script to file--"
echo

curl -o remotescript.sh "$DOWNLOAD_SCRIPT_URL"

echo
echo "--Executing script--"
echo

bash ./remotescript.sh