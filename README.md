# Sending IP

## Setting mail
I believe I had to:
```

sudo apt-get install ssmtp
sudo apt-get install mailutils

sudo vi /etc/ssmtp/ssmtp.conf

root=postmaster
mailhub=smtp.gmail.com:587  # or similar 
hostname=raspberrypi
AuthUser=AGmailUserName@gmail.com
AuthPass=TheGmailPassword
FromLineOverride=YES
UseSTARTTLS=YES
```

## CRON JOB
### Added a system wide cron job for user jmd by edting /etc/crontab: system-wide crontab
```
vi /etc/crontab
```
And added line:
```
0 *     * * *   jmd     /home/jmd/bin/is_new_ip.sh
```

### Alternatively I could have user used the profile’s crontab with command
```
crontab -e
```

https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804
