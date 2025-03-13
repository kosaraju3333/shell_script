# Q: Given a log file, write a Python script to extract failed login attempts.

# Jan 15 12:34:56 server sshd[1234]: Failed password for user admin from 192.168.1.18 port 22
# Jan 15 12:35:06 server sshd[1234]: Failed password for user nurix from 192.168.2.10 port 23
# …
# #D$%REDhgvjk
# Jan 15 12:44:15 server sshd[1234]: Successful login for user prod-admin from 192.172.7.1 port 80
# Jan 15 12:44:50 server sshd[1234]: Failed password for user nurix-dev from 192.172.5.10 port 443
# ##--

#!/bin/bash


cat <<EOF > test-logs
# Jan 15 12:34:56 server sshd[1234]: Failed password for user admin from 192.168.1.18 port 22
# Jan 15 12:35:06 server sshd[1234]: Failed password for user nurix from 192.168.2.10 port 23
# …
# #D$%REDhgvjk
# Jan 15 12:44:15 server sshd[1234]: Successful login for user prod-admin from 192.172.7.1 port 80
# Jan 15 12:44:50 server sshd[1234]: Failed password for user nurix-dev from 192.172.5.10 port 443
# ##--
EOF

cat test-logs | while read line
do 
    #echo $line | grep "Failed password" | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}'
    # echo $line | grep "Failed password" | awk -F "user" '{print "user ="$2 $3}'
     echo $line | grep "Failed password" | awk -F "user" '{print $2}' | awk -F ' ' '{print "user="$1," IP="$3,$4"="$5'}
done
