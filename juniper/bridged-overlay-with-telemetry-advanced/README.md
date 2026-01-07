This lab deploys a bridged overlay design (Layer 2 extension) using Juniper vJunos-switch nodes as leafs and spines of a 3-stage Clos fabric. You can deploy the fabric using `containerlab deploy -t bridged-overlay-with-telemetry-advanced.clab.yaml`.

> [!IMPORTANT]
> Minimum Containerlab version for the deployment of this lab is v0.62. A bare metal server is needed for vJunos-switch nodes. Running Containerlab in a VM will not work.

The topology is shown below. The username/password for vJunos-switch nodes is `admin/admin@123` and the username/password for the servers is `admin/multit00l`. 

![bridged-overlay-topology](/static/images/juniper-bridged-overlay.png)

The overall goal of this lab is to gain familiarity with model-driven telemetry and the ecosystem around it - to that end, this lab deploys a gNMIc instance that acts as a collector and Kafka producer, a Kafka cluster (3 instances) that acts as a message bus and broker, another gNMIc instance that acts as a Kafka consumer, a single instance of Victoria Metrics that is the time-series database, Promtail as a log shipping agent, Loki for log aggregation and finally Grafana for visualization, with the following workflow (you can login to Grafana using `admin/admin`):

![streaming-telemetry-workflow-advanced](/static/images/streaming-telemetry-workflow-advanced.png)