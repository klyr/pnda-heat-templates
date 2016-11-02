#!/bin/bash -v

#set -xe


openstack flavor delete p.master
openstack flavor delete p.tools
openstack flavor delete p.zookeeper
openstack flavor delete p.kafka
openstack flavor delete p.logserver
openstack flavor delete p.edge
openstack flavor delete p.cm
openstack flavor delete p.jupyter
openstack flavor delete p.dn
openstack flavor delete p.mgr
openstack flavor delete p.opentsdb
openstack flavor create --id auto --ram 2048 --disk 9 --vcpus 1 p.master
#openstack flavor create --id auto --ram 2048 --disk 9 --vcpus 1 p.tools
openstack flavor create --id auto --ram 2048 --disk 19 --vcpus 1 p.zookeeper
openstack flavor create --id auto --ram 4096 --disk 39 --vcpus 2 p.kafka
openstack flavor create --id auto --ram 32768 --disk 39 --vcpus 2 p.logserver
#openstack flavor create --id auto --ram 2048 --disk 19 --vcpus 1 p.edge
openstack flavor create --id auto --ram 32768 --disk 39 --vcpus 2 p.cm
#openstack flavor create --id auto --ram 4096 --disk 39 --vcpus 1 p.jupyter
#openstack flavor create --id auto --ram 4096 --disk 39 --vcpus 1 p.opentsdb
openstack flavor create --id auto --ram 8192 --disk 39 --vcpus 2 p.dn
openstack flavor create --id auto --ram 32768 --disk 39 --vcpus 2 p.mgr
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="master" p.master
#openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="tools" p.tools
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="zookeeper" p.zookeeper
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="kafka" p.kafka
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="logserver" p.logserver
#openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="edge" p.edge
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="cm" p.cm
#openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="jupyter" p.jupyter
#openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="opentsdb" p.opentsdb
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="dn" p.dn
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="mgr" p.mgr

