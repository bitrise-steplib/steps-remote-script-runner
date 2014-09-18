#!/bin/bash

echo
echo "DOWNLOAD_SCRIPT_URL: ${DOWNLOAD_SCRIPT_URL}"

# Required input validation
if [[ "${DOWNLOAD_SCRIPT_URL}" == "" ]]; then
	echo
	echo "No DOWNLOAD_SCRIPT_URL provided as environment variable. Terminating..."
	echo
	exit 1
fi


echo
echo "---------------------------------------------------"
echo "--- Executing script: ${DOWNLOAD_SCRIPT_URL}"
echo

curl -sSL "${DOWNLOAD_SCRIPT_URL}" | bash
res_code=$?
if [ ${res_code} -ne 0 ] ; then
	echo "--- [!] The script returned with an error code: ${res_code}"
	echo "---------------------------------------------------"
	exit 1
fi

echo
echo "--- Script returned with a success code - OK"
echo "---------------------------------------------------"
exit 0
