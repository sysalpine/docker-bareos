#!/bin/sh

sed -i 's@BAREOS_FD_NAME@'"$BAREOS_FD_NAME"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_ADDRESS@'"$BAREOS_FD_ADDRESS"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PORT@'"$BAREOS_FD_PORT"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_FD_PASSWORD@'"$BAREOS_FD_PASSWORD"'@' /etc/bareos/bareos-fd.conf
sed -i 's@BAREOS_DIR_ADDRESS@'"$BAREOS_DIR_ADDRESS"'@' /etc/bareos/bareos-fd.conf
sed -i 's@CONNECTION_FROM_CLIENT_TO_DIRECTOR@'"$CONNECTION_FROM_CLIENT_TO_DIRECTOR"'@' /etc/bareos/bareos-fd.conf
sed -i 's@CONNECTION_FROM_DIRECTOR_TO_CLIENT@'"$CONNECTION_FROM_DIRECTOR_TO_CLIENT"'@' /etc/bareos/bareos-fd.conf

bareos-fd -f -c /etc/bareos/bareos-fd.conf
