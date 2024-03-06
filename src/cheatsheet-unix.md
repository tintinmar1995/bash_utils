# Cheatsheet Bash

## Process

Background & Foreground
- Ctrl + Z to pause
- bg to run in background
- gf to bring back in foreground

Ctrl + S to freeze terminal  and Ctrl + Q to unfreeze

## Compressing 

### TARBALLS

tar cf file.tar files - tar files into file.tar
tar xf file.tar - untar into current directory
tar tf file.tar - show contents of archive

options :
- c : create
- t : toc
- x : extract
- z : use zip/gzip
- f : specify filename
- j : bzip2 compression 
- w : ask from confirmation
- k : do not overwrite
- T : files from file
- v : verbose

### Zip file

- zip -r existing.zip myfolder/
- zip existing.zip --out new.zip -s 50m

## SSH

### Prevent broken pipe

sudo vim /etc/ssh/ssh_config

```bash
ServerAliveInterval 120
```

## CURL

### POST

```bash
curl -X POST -F 'name=linuxize' -F 'email=linuxize@example.com' https://example.com/contact.php
```

## Permissions 

chmod octal file - change permissions of file

4 - read (r)
2 - write (w)
1 - execute (x)

Order owner/group/world

chmod 777 : rwx for everyone
chmod 755 : rwx for owner, rx for gropu and world

