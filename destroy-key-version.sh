#!/usr/bin/env bash

set -euo pipefail
set -x

. env.sh
version=$1

gcloud kms keys versions destroy "$version" \
    --project "$PROJECT" \
    --location "$LOCATION" \
    --keyring "$KEYRING_NAME" \
    --key "$KEY_NAME"
