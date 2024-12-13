#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="xmr-eu1.nanopool.org"
PORT=14444
MYADDRESS="43tvdc2FQnRLm2Suwp2YSgDWMBgcK1Srp5HPCoZc2ZhnVfhovJaetUB6C4drbiwwPqdKbEWGw44r2VRd2QbguD8F5oHVkM9"
COINNAME="monero"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
