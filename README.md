# aws-sipp
### Use Ansible to build an AWS-based SIP test network

Configure your AWS access key and secret in environment varibles prior
to running Ansible.  For example, you may add the following stanza to
your .bash_profile:
```
export AWS_ACCESS_KEY_ID=<access_key>
export AWS_SECRET_ACCESS_KEY=<secret>
export AWS_REGION=us-east-1
```
To run the playbook, `ansible-playbook playbook.yml -i inventory`
