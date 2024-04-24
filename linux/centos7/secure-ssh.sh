#secure-ssh.sh
#author amin
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo "ALL YOUR CODE GOES HERE"

useradd -m -d /home/"$1" -s /bin/bash "$1"
sudo mkdir /home/"$1"/.ssh
cp /home/deployer/gitlab/SYS-265/linux/public-keys/id_rsa.pub /home/"$1"/.ssh/authorized_keys
chmod 700 /home/"$1"/.ssh
chmod 600 /home/"$1"/.ssh/authorized_keys
chown -R "$1":"$1" /home/"$1"/.ssh
