#!/bin/sh  
 
# Create "fake" vendor directory to mount to
mkdir /vendor
 
# Mount vendor partition
mount /dev/mapper/vendor_a /vendor
 
# Done. Now firmware should load successfully.

# Cleanup hook before root switch
cat << EOF > /hooks-cleanup/vendor_firmware_hook.sh
#!/bin/sh
umount /vendor
EOF

chmod +x /hooks-cleanup/vendor_firmware_hook.sh
