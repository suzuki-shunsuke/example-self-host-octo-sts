#!/usr/bin/env bash

set -euo pipefail
set -x

. env.sh

gcloud kms keys versions list \
    --project "$PROJECT" \
    --location "$LOCATION" \
    --keyring "$KEYRING_NAME" \
    --key "$KEY_NAME"
