# CRON JOB
Added a system wide cron job for user jmd by edting /etc/crontab: system-wide crontab
```
vi /etc/crontab
```

0 *     * * *   jmd     /home/jmd/bin/is_new_ip.sh

Alternatively I could have user used the profile’s crontab with command
```
crontab -e
```
