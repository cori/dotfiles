#!/bin/bash

set -euo pipefail

if [ ! -z $1 ]; then
	P2ID=$1
fi

echo "http://10.0.5.5:8080/app/$P2ID"
echo "http://localhost:8000/edit/#!/$P2ID"
echo "http://10.0.5.5:5000/terminal?projectId=$P2ID"
