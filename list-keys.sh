#!/usr/bin/env bash

set -euo pipefail

. env.sh

gcloud kms keys list \
  --project "$PROJECT" \
  --location "$LOCATION" \
  --keyring "$KEYRING_NAME"
