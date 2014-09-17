#!/bin/bash

echo
echo "DOWNLOAD_SCRIPT_URL: ${DOWNLOAD_SCRIPT_URL}"

# Required input validation
if [[ ! ${DOWNLOAD_SCRIPT_URL} ]]; then
	echo
    echo "No DOWNLOAD_SCRIPT_URL provided as environment variable. Terminating..."
    echo
    exit 1
fi


echo
echo "--Executing script--"
echo

curl -sSL "${DOWNLOAD_SCRIPT_URL}" | bash
