#!/bin/bash
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

# Installazione webconsole cokcpit
sudo yum install cockpit
sudo systemctl enable --now cockpit.socket

# Comandi per visualizzare i servizi
sudo systemctl status

# Lista di tutti i servizi attivi
sudo systemctl list-units --type=service --state=active


# Verifica del target corrente (runlevel)
systemctl get-default

# Cisualizzare lo stato dei servizi
systemctl list-unit-files --type=service

# lista utenti
cat /etc/passwd

# lista pwd crittografate x utente
sudo cat /etc/shadow

# lista gruppi
cat /etc/group

# add user + grouppo con lo stesso nome utente
sudo useradd pippo -U

# set user pwd
sudo passwd pippo

# lissta degli uid e gid riservati
cat /usr/share/doc/setup*/uidgid

# file per modificare i valori minimi per uid e gid
sudo nano /etc/login.defs

# Vedere i metadati della password i un utente
sudo chage --list pippo

# lista parametri modificabili per rules sulle password
cat /etc/login.defs | grep PASS

# cambio le rule della password per l'utente pippo
 sudo chage --mindays 7 --maxdays 90 --warndays 5 pippo

 