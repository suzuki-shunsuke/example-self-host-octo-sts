# example-self-host-octo-sts

Note for self hosting Octo STS

- Set up a GitHub App
  - Create a GitHub App
  - Configure Permissions
  - Install the app to repositories
  - Create a private key
- Set up Could KMS
  - Create Google Cloud Project
  - Enable Cloud KMS API
  - Import the GitHub App's private key to Could KMS
- Set up a receiver of CloudEvents
- Run octo-sts/app

## Import a private key to Could KMS

https://cloud.google.com/kms/docs/key-import

1. Create a keyring
1. Create a key
1. Create an import job
1. Import a private key
