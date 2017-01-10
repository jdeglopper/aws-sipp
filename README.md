# aws-sipp
### Use Ansible to build an AWS-based SIP test network

Configure your AWS access key and secret in environment varibles prior
to running Ansible.  For example, you may add the following stanza to
your .bash_profile:
```Shell
export AWS_ACCESS_KEY_ID=accesskey
export AWS_SECRET_ACCESS_KEY=secret
```
cd to one of the project directories, either `ansible-bare-AWS` or 
`ansible-docker-AWS`

To run the playbook to provision the VPC and 2 EC2 instances, run
`ansible-playbook -i inventory provision.yml`
Note that your SSH key from ~/.ssh/id_rsa.pub will automatically be
loaded for ec2-user.

Once the instances are provisioned, to install sipp, or docker,
respectively, run
`ansible-playbook -i ec2.py deploy.yml`

To terminate all instances, run `ansible-playbook -v -i inventory
terminate.yml`

