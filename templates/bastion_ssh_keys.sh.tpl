#!/bin/bash -x

filename=$${0##*/}
echo "`date +%F\ %H:%M:%S.%N`: [INFO] Invoking $$filename" > /var/tmp/post-install-$${filename}.log
exec >> /var/tmp/post-install-$${filename}.log 2>&1

USER=ubuntu
mkdir -p /home/$$USER/.ssh
cat >> /home/$$USER/.ssh/authorized_keys << 'EOF'
%{ for ssh_key in bastion_ssh_keys ~}
backend ${ssh_key}
%{ endfor ~}
EOF

# Change ownership and access modes for the new directory/file
chown -R $$USER:$$USER /home/$$USER/.ssh
chmod -R go-rx /home/$$USER/.ssh
