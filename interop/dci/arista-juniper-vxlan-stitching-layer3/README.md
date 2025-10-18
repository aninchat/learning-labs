This lab deploys a DCI solution with EOS multi-domain EVPN VXLAN and Junos integrated interconnect with Arista cEOS as the spines and leafs in dc1 and Juniper Junos spines and leafs (vJunosEvolved as DC gateway) in dc2, with both data centers following a 3-stage Clos architecture for Layer 3 communication across DCs (re-originating EVPN Type-5 routes using IETF draft `draft-ietf-bess-evpn-ipvpn-interworking`). You can deploy the fabric using `sudo containerlab deploy -t eos-junos-vxlan-stitching-layer3.clab.yaml -c`.

> [!IMPORTANT]
> I try to keep these labs as low-effort for the consumer as possible. However, unlike vJunos from Juniper, cEOS requires a login on arista.com to download and use. For that reason, I am choosing not to host the docker container directly and you will need to import the container manually. Instructions on how to do this is demonstrated below.

The topology is shown below. The username/password for EOS nodes is `admin/admin`, the username/password for vJunos nodes is `admin/admin@123` and the username/password for the servers is `admin/multit00l`.

![eos-juniper-vxlan-stitching-layer3](/static/images/eos-junos-vxlan-stitching-layer3.png)

# Importing the cEOS docker container

On arista.com, navigate to Support -> Software Download -> All downloads. On this page, scroll down and you will find all cEOS and vEOS images available to download. Download the `cEOS64-lab-4.34.2.1F.tar.xz` file and upload to your server. Now you can import it using `docker import cEOS64-lab-4.34.2.1F.tar.xz ceos:4.34.2.1F`.

Once the image is imported, you should see the container using `docker images`:

```
❯ docker images
REPOSITORY                           TAG         IMAGE ID       CREATED       SIZE
ceos                                 4.34.2.1F   b047ccea1122   3 days ago    2.54GB

*snip*
```