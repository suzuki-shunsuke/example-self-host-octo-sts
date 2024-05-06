#!/usr/bin/env bash

set -euo pipefail
set -x

. env.sh

export CLOUDSDK_PYTHON_SITEPACKAGES=1
gcloud kms keys versions import \
    --project "$PROJECT" \
    --location "$LOCATION" \
    --import-job "$IMPORT_JOB_NAME" \
    --keyring "$KEYRING_NAME" \
    --key "$KEY_NAME" \
    --algorithm "$KEY_VERSION_ALGORITHM" \
    --target-key-file "$DER_FILE"
