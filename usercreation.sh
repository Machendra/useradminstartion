#!/bin/bash
for user in suresh ramesh rajesh somesh
do
useradd $user
mkdir /home/$user/.ssh
chmod 700 /home/$user/.ssh
chown $user:$user /home/$user/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAj5sduK8FBCMM/Aph3wZe+0txZGFiLMweFygbH9E1bK6cSOYm+6hMLNRBcwBj1+ihqrbOByLY2qVKW+zxLCG89V+bAWELDrRYf2As1ErU8JAh4eDp9/SMNboGyb6Bhwz4wWC0jAnJQb0qiOjWWIOHVBknSgydZon04a/gaYDa7xYiRsMPqiV0OB5UJi4hLDmRKaydHni/t50NitGOqVMRGycvsvszYYlCuQEUul5GE8RhMfz2eOXq4tlR7KGDtqqwf7qOLVYB36BLa2EnQ1fLiBd91ozRrlvcizjezckWwhkAB9UE8fDH+IiXd7wX/lLmtxm4eJahJWqED2/hhoFTow== $user" > /home/$user/.ssh/authorized_keys
chmod 600 /home/$user/.ssh/authorized_keys
chown $user:$user /home/$user/.ssh/authorized_keys
done
