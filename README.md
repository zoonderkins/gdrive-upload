# gdrive-upload
Script backup folder for Ubuntu / Centos / Debain OS to Google Drive
<br>Compress type: tar , AES-256 Encrypt

Download: <a href="https://github.com/ookangzheng/gdrive-upload/raw/master/server-backup.sh">Download Script </a> |<a href="https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download">Linux 64 bit</a>|<a href="https://docs.google.com/uc?id=0B3X9GlR6EmbnLV92dHBpTkFhTEU&export=download">Linux 32 bit</a>

<br>

1. Please download the gdrive source from https://github.com/prasmussen/gdrive (Skip this step if you download from above)
2. Rename the file u download to gdrive, change the permission " chmod +x gdrive "
3. Move to system command , mv gdrive /usr/sbin/gdrive  , chmod 755 /usr/sbin/gdrive
3. First time run, "gdrive about " , then it will appear a link, copy it to the browser and login with your Gmail Account that you wan to use.
4. Allow the permission request, it will return a long code , copy it and paste in to your ssh, DONE!
5. Now, config server-backup.sh with the directory you want to backup and encrypt function (REMEMBER the PASSWORD you SET)!!!
6. Then make cron job or Run the script muanually ~~ 
Enjoy ~~ 
