#!/bin/sh  
 
# Create "fake" vendor directory to mount to
mkdir /vendor
 
# Mount vendor partition
mount /dev/mapper/vendor_a /vendor
 
# Done. Now firmware should load successfully.
