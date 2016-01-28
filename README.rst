==========================
Packer Templates
==========================

Packer templates for building VMs for ESXi and Virtualbox

Usage
=====

Install
-----------------

Download the latest packer from http://www.packer.io/downloads.html

Run
-----------------

packer build  -var 'network=VLAN-20' -var-file=../config.json -var 'hostname=wiki.domain.local' -var 'ip_cidr=172.16.20.30/24' -only=vmware-iso template.json
