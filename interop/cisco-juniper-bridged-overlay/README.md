This lab deploys a bridged overlay EVPN VXLAN fabric with a mix of Cisco N9Kv and Juniper Junos as leafs and spines in a 3-stage Clos architecture to test interoperability between them. You can deploy the fabric using `sudo containerlab deploy -t cisco-juniper-bridged-overlay.clab.yaml -c`.

> [!IMPORTANT]
> I try to keep these labs as low-effort for the consumer as possible. However, unlike vJunos from Juniper, N9Kv requires a login on cisco.com to download and use. For that reason, I am choosing not to host the docker container directly and you will need to build the container using the `vrnetlab` project to use this lab. Instructions on how to build it is demonstrated below.

The topology is shown below. The username/password for N9kv nodes is `admin/admin` and the username/password for the servers is `user/multit00l`.

![cisco-juniper-bridged-overlay](/static/images/cisco-juniper-bridged-overlay.png)

# Building the N9Kv docker container

On cisco.com, navigate to Support -> Products and Downloads -> All downloads. On this page, search for `Nexus 9000v switch` and download the image `nexus9300v64.10.6.1.F.qcow2` (this is the image that this lab is tested with). Once download, pull the Git repository for the `vrnetlab` project - `git clone https://github.com/vrnetlab/vrnetlab`. Move the N9Kv image to the `n9kv` folder in the vrnetlab project directory. It must be renamed as shown below:

```
~/aninchat/labs/training/cisco/bridged-overlay master*                                                                                                                  
❯ ls -l ~/vrnetlab/n9kv 
total 2927056
drwxr-xr-x 2 root root       4096 Jul 21 23:15 docker
-rw-r--r-- 1 root root        362 Mar 17 08:32 Makefile
-rw-r--r-- 1 root root 2997288960 Jul 21 21:48 n9kv-9300v64-10.6.1.F.qcow2
-rw-r--r-- 1 root root        698 Jul 21 23:11 README.md
```

Once the image is here, you can run `make` to start the build. When this completes, you should see the container using `docker images`:

```
❯ docker images
REPOSITORY                           TAG                IMAGE ID       CREATED         SIZE
vrnetlab/cisco_n9kv                  9300v64-10.6.1.F   fe7f4de96794   3 weeks ago     3.42GB

*snip*
```