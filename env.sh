PROJECT=test-octo-sts
LOCATION=asia-northeast1
KEYRING_NAME=test-octo-sts
KEY_NAME=test-octo-sts-github-app-private-key
IMPORT_JOB_NAME=test-octo-sts

PEM_FILE=private-key.pem
DER_FILE=private-key.der

# https://cloud.google.com/kms/docs/key-wrapping#import_methods
IMPORT_METHOD=rsa-oaep-3072-sha256-aes-256

# https://cloud.google.com/kms/docs/algorithms
KEY_VERSION_ALGORITHM=rsa-sign-pkcs1-3072-sha256
