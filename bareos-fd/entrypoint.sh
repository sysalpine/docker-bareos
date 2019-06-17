#!/bin/sh

sed -i 's@BAREOS_FD_NAME@'"$BAREOS_FD_NAME"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_ADDRESS@'"$BAREOS_FD_ADDRESS"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PORT@'"$BAREOS_FD_PORT"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PASSWORD@'"$BAREOS_FD_PASSWORD"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_EXTRA_CONFIG@'"$BAREOS_FD_EXTRA_CONFIG"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_DIR_ADDRESS@'"$BAREOS_DIR_ADDRESS"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_DIR_EXTRA_CONFIG@'"$BAREOS_DIR_EXTRA_CONFIG"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_DIR_NAME@'"$BAREOS_DIR_NAME"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PKI_SIGNATURES@'"$BAREOS_FD_PKI_SIGNATURES"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PKI_ENCRYPTION@'"$BAREOS_FD_PKI_ENCRYPTION"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PKI_KEYPAIR@'"$BAREOS_FD_PKI_KEYPAIR"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PKI_MASTER_KEY@'"$BAREOS_FD_PKI_MASTER_KEY"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PKI_CIPHER@'"$BAREOS_FD_PKI_CIPHER"'@' /etc/bareos/bareos-fd.conf
sed -i 's@CONNECTION_FROM_CLIENT_TO_DIRECTOR@'"$CONNECTION_FROM_CLIENT_TO_DIRECTOR"'@' /etc/bareos/bareos-fd.conf
sed -i 's@CONNECTION_FROM_DIRECTOR_TO_CLIENT@'"$CONNECTION_FROM_DIRECTOR_TO_CLIENT"'@' /etc/bareos/bareos-fd.conf

if [ ! -d /data ]; then
  mkdir /data
fi

bareos-fd -f -c /etc/bareos/bareos-fd.conf
