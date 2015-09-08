#!/bin/bash

echo
echo "script_url: ${script_url}"

# Required input validation
if [[ "${script_url}" == "" ]]; then
	echo
	echo "No script_url provided as environment variable. Terminating..."
	echo
	exit 1
fi


echo
echo "---------------------------------------------------"
echo "--- Executing script: ${script_url}"
echo

curl -sSL "${script_url}" | bash
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
