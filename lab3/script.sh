#!/bin/bash

find / -type l -exec ls -la '{}'\;

find / -type b -or -type c | wc -l 

find / -type d -perm -1000 -exec ls -ld {} \;

ln -s /etc/hostname /tmp/newhostname

useradd testuser

# Create file in home directory “testuser_data” owned by “testuser”
touch /home/testuser/testuser_data
chown testuser:testuser /home/testuser_data
