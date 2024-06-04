#!/bin/bash
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

# Installazione webconsole cokcpit
sudo yum install cockpit
sudo systemctl enable --now cockpit.socket

# Comandi per visualizzare i servizi
sudo systemctl status

# Lista di tutti i servizi attivi
sudo systemctl list-units --type=service --state=active
