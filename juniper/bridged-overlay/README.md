This lab deploys a bridged overlay design (Layer 2 extension) using Juniper vJunos-switch nodes as leafs and spines of a 3-stage Clos fabric. You can deploy the fabric using `containerlab deploy -t bridged-overlay.clab.yaml`.

> [!IMPORTANT]
> Minimum Containerlab version for the deployment of this lab is v0.62.

The topology is shown below. The username/password for vJunos-switch nodes is `admin/admin@123` and the username/password for the servers is `user/multit00l`.

![bridged-overlay-topology](/static/images/juniper-bridged-overlay.png)