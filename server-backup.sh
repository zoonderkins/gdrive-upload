#!/bin/sh

# tar the server directory
tar -cvf "server3-backup-$(date '+%Y-%m-%d').tar" /home/wwwroot

# encrypt the tar
#openssl aes-256-cbc -a -salt -in "server3-backup-$(date '+%Y-%m-%d').tar" -out "server3-backup-$(date '+%Y-%m-%d').tar.enc" -pass 'pass:1qsNodXNaWq1mQuBjUjmvhoO'

# upload to google drive
drive upload --file "server3-backup-$(date '+%Y-%m-%d').tar"
#drive upload --file "server3-backup-$(date '+%Y-%m-%d').tar.enc"

# remove the original tar
rm -rf "server3-backup-$(date '+%Y-%m-%d').tar"


