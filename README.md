# 🛠️ K8s to Blank System μ-service
[![lg-labs][0]][1]
[![License][2]][LIC]

<img src="https://avatars.githubusercontent.com/u/105936384?s=400&u=290ae673580a956864a07d4aef8e4448372a836b&v=4" align="left" width="172px" height="172px"/>
<img align="left" width="0" height="172px" hspace="10"/>

> 👋 The K8s files to deploy the Blank System.
>

From **Lg Pentagon** or **lg5**! Get [Lg5-Spring][3] to develop μ-services faster.

For more information, check this pages https://lufgarciaqu.medium.com.
<h1></h1>

# Using K8s, Helm and [cp-helm-charts](helm%2Fcp-helm-charts)

[More details][4]


## 🚀 Deploy Blank System
> ⚠️ **Require** the docker images for each Blank System component.     
> [How can you generate the Blank System's images?][5]

### SetUp Helm
Change the version to zookeper, modify the file [poddisruptionbudget.yaml](helm%2Fcp-helm-charts%2Fcharts%2Fcp-zookeeper%2Ftemplates%2Fpoddisruptionbudget.yaml)

```bash
# before
apiVersion: apiVersion: policy/v1beta1
# after
apiVersion: policy/v1
```

Using `makefile`

Install 1/1: Create the helm directory.

```bash
make init-helm 
```

### You can ...
Using `makefile`

Install 1/5: Create the helm directory.

```bash
make init-helm 
```

Install 1/5: Create the kafka cluster.

```bash
make install-kafka 
```

Install 2/5: Create a kafka client.
```bash
make kafka-up 
```

Install 3/5: Create topics manually!

```bash
make kafka-exec
```
_Create topics manually with [create-topics.sh](create-topics.sh)_

Install 4/5: Deploy a Postgres!
```bash
make db-up
```

Install 5/5: Deploying the blank system components!
```bash
make app-up
```
## 🧪 Testing
Execute API using this file [api.http](api.http).

## 🗑️ Uninstall

```bash
# removing the blank system components!
make app-down
```
```bash
# removing Postgres
make db-down
```
```bash
# removing Kafka Server
make uninstall-kafka
```
```bash
# removing Kafka Client
make kafka-down
```


## 📚Contents

* [postgres-deployment.yml](postgres-deployment.yml)
* [cp-helm-charts](helm%2Fcp-helm-charts)
* [kafka-client.yml](kafka-client.yml)
* [create-topics.sh](create-topics.sh)
* [application-deployment-local.yml](application-deployment-local.yml)
* [api.http](api.http)


## ⚖️ License

The MIT License (MIT). Please see [License][LIC] for more information.


[0]: https://img.shields.io/badge/LgLabs-community-blue?style=flat-square
[1]: https://lufgarciaqu.medium.com
[2]: https://img.shields.io/badge/license-MIT-green?style=flat-square
[3]: https://lg-labs-pentagon.github.io/lg5-spring/
[4]: https://github.com/confluentinc/cp-helm-charts
[5]: https://lg-labs.github.io/blank-service/


[LIC]: LICENSE

[img1]: https://github.com/lg-labs-pentagon/lg-labs-boot-parent/assets/105936384/31c27db8-1e77-478d-a38e-7acf6ba2571c
