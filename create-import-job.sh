#!/usr/bin/env bash

set -euo pipefail
set -x

. env.sh

gcloud kms import-jobs create "$IMPORT_JOB_NAME" \
  --project "$PROJECT" \
  --location "$LOCATION" \
  --keyring "$KEYRING_NAME" \
  --import-method "$IMPORT_METHOD" \
  --protection-level software
