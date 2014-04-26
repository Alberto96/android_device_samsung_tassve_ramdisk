#!/sbin/busybox sh

# give right permissions
chmod -R 777 /sbin
chown -R 0.0 /sbin

# symlinking some file
ln -s /res/recovery.fstab /etc/recovery.fstab

# unlock BML partition
/sbin/bmlunlock

rm /cache/recovery/command
rm /cache/update.zip
touch /tmp/.ignorebootmessage

setprop rev-install.ready 1 

exit 1
