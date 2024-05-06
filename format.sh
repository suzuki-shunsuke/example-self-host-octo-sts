#!/usr/bin/env bash

set -euo pipefail
set -x

# https://cloud.google.com/kms/docs/formatting-keys-for-import#formatting_asymmetric_keys
# Convert PEM to PCKS#8 DER format.

. env.sh

openssl pkcs8 -topk8 -nocrypt -inform PEM -outform DER \
    -in "$PEM_FILE" \
    -out "$DER_FILE"
