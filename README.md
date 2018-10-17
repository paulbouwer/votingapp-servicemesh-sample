# AKS Voting App sample

This repo provides the source code and scenario artefacts for the AKS Voting App sample used in the [AKS documentation](https://docs.microsoft.com/en-us/azure/aks/).

## Supported scenarios

### Intelligent routing and canary releases with Istio

The scenario artefacts are location in the `scenarios\intelligent-routing-with-istio` folder. The scenario can be followed in the AKS [Intelligent routing and canary releases with Istio](https://docs.microsoft.com/en-us/azure/aks/istio-scenario-routing) documentation.

## Docker images

The AKS Voting App components are built from the source located in the `src` folder. These are published as the following images:

- mcr.microsoft.com/aks/samples/voting/app:1.0
- mcr.microsoft.com/aks/samples/voting/app:2.0
- mcr.microsoft.com/aks/samples/voting/analytics:1.0
- mcr.microsoft.com/aks/samples/voting/analytics:1.1
- mcr.microsoft.com/aks/samples/voting/analytics:2.0
- mcr.microsoft.com/aks/samples/voting/storage:2.0

---

This replaces all previous versions of the Azure Voting App sample to provide a single configurable sample that caters to multiple scenarios:

- https://github.com/Azure-Samples/azure-voting-app-redis
- https://github.com/Azure-Samples/azure-voting-app