#!/bin/sh

# tar the server directory
tar -cvf "server-backup-$(date '+%Y-%m-%d').tar" /home/wwwroot

# encrypt the tar
#if you need encrpyt ur file, enable this function
#openssl aes-256-cbc -a -salt -in "server-backup-$(date '+%Y-%m-%d').tar" -out "server-backup-$(date '+%Y-%m-%d').tar.enc" -pass 'pass:xxxxx'
# -pass: need change to ur google drive password
# upload to google drive
drive upload --file "server3-backup-$(date '+%Y-%m-%d').tar"
#drive upload --file "server3-backup-$(date '+%Y-%m-%d').tar.enc"

# remove the original tar
rm -rf "server-backup-$(date '+%Y-%m-%d').tar"


