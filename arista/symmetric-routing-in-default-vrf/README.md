This lab deploys an EVPN VXLAN fabric with inter-VLAN routing using the symmetric IRB routing model (in default VRF) with Arista cEOS as leafs and spines of a 3-stage Clos architecture. You can deploy the fabric using `sudo containerlab deploy -t eos-symmetric-routing-default-vrf.clab.yaml -c`.

> [!IMPORTANT]
> I try to keep these labs as low-effort for the consumer as possible. However, unlike vJunos from Juniper, cEOS requires a login on arista.com to download and use. For that reason, I am choosing not to host the docker container directly and you will need to import the container manually. Instructions on how to do this is demonstrated below.

The topology is shown below. The username/password for cEOS nodes is `admin/admin` and the username/password for the servers is `admin/multit00l`.

![ceos-symmetric-routing-topology](/static/images/ceos-symmetric-routing.png)

# Importing the cEOS docker container

On arista.com, navigate to Support -> Software Download -> All downloads. On this page, scroll down and you will find all cEOS and vEOS images available to download. Download the `cEOS64-lab-4.34.2.1F.tar.xz` file and upload to your server. Now you can import it using `docker import cEOS64-lab-4.34.2.1F.tar.xz ceos:4.34.2.1F`.

Once the image is imported, you should see the container using `docker images`:

```
❯ docker images
REPOSITORY                           TAG         IMAGE ID       CREATED       SIZE
ceos                                 4.34.2.1F   b047ccea1122   3 days ago    2.54GB

*snip*
```