# Bareos Filedaemon Docker Image

## Configuration

Name | Description | Default Value | Required
-----|-------------|---------------|---------
BAREOS_FD_PASSWORD |  | changeme | yes
BAREOS_FD_NAME |  | localhost | yes
BAREOS_FD_ADDRESS |  | 0.0.0.0 | yes
BAREOS_FD_PORT |  | 9102 | yes
BAREOS_FD_PKI_SIGNATURES |  | "no" | no
BAREOS_FD_PKI_ENCRYPTION |  | "no" | no 
BAREOS_FD_PKI_KEYPAIR | Path to pem file | "" | no
BAREOS_FD_PKI_MASTER_KEY | Path to pem file | "" | no
BAREOS_FD_EXTRA_CONFIG |  | "" | no
BAREOS_DIR_ADDRESS |  | localhost | yes
BAREOS_DIR_EXTRA_CONFIG |  | "" | no
BAREOS_DIR_NAME |  | bareos-dir | yes
CONNECTION_FROM_CLIENT_TO_DIRECTOR |  | no | no
CONNECTION_FROM_DIRECTOR_TO_CLIENT |  | no

## Examples

