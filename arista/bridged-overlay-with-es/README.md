This lab deploys a bridged overlay EVPN VXLAN fabric (Layer 2 extension) using Arista cEOS as leafs and spines of a 3-stage Clos architecture, with an ethernet segment to server s2. You can deploy the fabric using `sudo containerlab deploy -t eos-bridged-overlay-with-es.clab.yaml -c`.

> [!IMPORTANT]
> I try to keep these labs as low-effort for the consumer as possible. However, unlike vJunos from Juniper, cEOS requires a login on arista.com to download and use. For that reason, I am choosing not to host the docker container directly and you will need to import the container manually. Instructions on how to do this is demonstrated below.

The topology is shown below. The username/password for cEOS nodes is `admin/admin` and the username/password for the servers is `admin/multit00l`.

![ceos-bridged-overlay-topology](/static/images/ceos-bridged-overlay.png)

# Importing the cEOS docker container

On arista.com, navigate to Support -> Software Download -> All downloads. On this page, scroll down and you will find all cEOS and vEOS images available to download. Download the `cEOS64-lab-4.34.2.1F.tar.xz` file and upload to your server. Now you can import it using `docker import cEOS64-lab-4.34.2.1F.tar.xz ceos:4.34.2.1F`.

Once the image is imported, you should see the container using `docker images`:

```
❯ docker images
REPOSITORY                           TAG         IMAGE ID       CREATED       SIZE
ceos                                 4.34.2.1F   b047ccea1122   3 days ago    2.54GB

*snip*
```