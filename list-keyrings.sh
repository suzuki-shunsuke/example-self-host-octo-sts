#!/usr/bin/env bash

set -euo pipefail

. env.sh

gcloud kms keyrings list \
  --project "$PROJECT" \
  --location "$LOCATION"
