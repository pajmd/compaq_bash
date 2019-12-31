#!/bin/bash

# https://blog.edmdesigner.com/send-email-from-linux-command-line/

echo $(curl -s http://checkip.dyndns.org) | mail -aFrom:p.j1@orange.fr -s "$(echo -e "This is WAN\nContent-Type: text/html")" philtjmd@gmail.com

