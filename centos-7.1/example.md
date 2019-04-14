packer build  -var 'network=VLAN-20' -var-file=../config.json -var 'hostname=el7-02.teigur.local' -var 'ip_cidr=172.16.20.181/24' -var 'update=true' -only=vmware-iso template.json
