This lab deploys a bridged overlay design (Layer 2 extension) using Juniper vJunos-switch nodes as leafs and vQFX nodes as the spines of a 3-stage Clos fabric. You can deploy the fabric using `containerlab deploy -t intra-vlan-multicast-ar.clab.yaml`.

> [!IMPORTANT]
> Minimum Containerlab version for the deployment of this lab is v0.62. A bare metal server is needed for vJunos-switch nodes. Running Containerlab in a VM will not work.  
> [!IMPORTANT]
>Ostinato containers are multicast sources in this fabric. Tthis is a paid resource - if you do not have this, you can use Linux containers and use iperf to generate multicast traffic; however, having said, that I highly recommend just buying an Ostinato container license.  

The topology is shown below. The username/password for vJunos-switch nodes is `admin/admin@123` and the username/password for the servers is `user/multit00l`.

![intra-vlan-multicast-ar-topology](/static/images/juniper-intra-vlan-multicast-ar.png)