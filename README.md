# CRON JOB
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
