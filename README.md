## Apollo helm

Apollo helm is a helm chart for [Apollo](https://github.com/ctripcorp/apollo)(Configuration management for distributed systems).

### TL;DR;

```
$ git clone https://github.com/qct/apollo-helm.git
$ cd apollo-helm
$ helm install --name my-release .
```

### Introduction
This chart bootstraps an Apollo deployment on a Kubernetes cluster using the Helm package manager.

### Prerequisites Details
* PV support on underlying infrastructure (if persistence is required)

### Installing the Chart
To install the chart with the release name my-release:
```
$ helm install --name my-release .
```

### Uninstalling the Chart
To uninstall/delete the my-release deployment:
```
$ helm delete my-release
```
The command removes nearly all the Kubernetes components associated with the chart and deletes the release.

### Configuration
The following table lists the configurable parameters of the Apollo chart and their default values.

| Parameter               | Description                           | Default                                                    |
| ----------------------- | ----------------------------------    | ---------------------------------------------------------- |
| **Adminservice** |
| `adminservice.image.repository` | Apollo adminservice image | Not ready |
| `adminservice.image.tag` | Apollo adminservice image version | `1.1.3` |
| **Configservice** |
| `configservice.image.repository` | Apollo configservice image | Not ready |
| `configservice.image.tag` | Apollo configservice image version | `1.1.3` |
| **Portal** |
| `portal.image.repository` | Apollo portal image | Not ready |
| `portal.image.tag` | Apollo portal image version | `1.1.3` |

...

|To be continued|
| ------ |

### Persistence
As designed by Apollo, configservice and adminservice share a mysql instance, while portal should use its own mysql instance in an environment.

### Warning
The apollo-helm repo is **unfinished**, take risks at your own if used in a production environment.  

### Thanks
Many thanks to ctrip [Apollo](https://github.com/ctripcorp/apollo), they bring us a so great configuration management system,
many thanks to [AiotCEO](https://github.com/AiotCEO) for the contribution of the [appolo-on-kubernetes](https://github.com/ctripcorp/apollo/tree/master/scripts/apollo-on-kubernetes) part.

### Road map
* Deploy Apollo for a single dev environment configuration management on a Kubernetes cluster
* Deploy Apollo for customized environment (customization for environment name and quantity)

>Tip: By now you can play with the chart for a single environment deployment.

### Screenshots
![apollo-dev-deployment](images/apollo-dev-deployment.png)  
