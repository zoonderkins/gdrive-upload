#!/bin/sh
## /home/wwwroot (was my default website home directory, pls update it

# tar the server directory
tar -cvf "server-backup-$(date '+%Y-%m-%d').tar" /home/wwwroot

# Encrypt the tar files
#if you need encrpyt ur file, pls enable this function

#openssl aes-256-cbc -a -salt -in "server-backup-$(date '+%Y-%m-%d').tar" -out "server-backup-$(date '+%Y-%m-%d').tar.enc" -pass 'pass:xxxxx'
# -pass: will be your encrypt password (Pls REMEMBER it)

# upload to google drive
gdrive upload "server-backup-$(date '+%Y-%m-%d').tar"

#only activate encryption mode
#./gdrive upload "server-backup-$(date '+%Y-%m-%d').tar.enc"
# rm -rf "server-backup-$(date '+%Y-%m-%d').tar.enc" 

# remove the original tar
rm -rf "server-backup-$(date '+%Y-%m-%d').tar"

exit 0
