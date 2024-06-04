#!/bin/bash
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

# Installazione webconsole cokcpit
sudo yum install cockpit
sudo systemctl enable --now cockpit.socket