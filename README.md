# Helm

Shared persistent volume with Kubernetes and Helm

## Built with

- [Kubernetes](https://kubernetes.io/)
- [Minikube](https://minikube.sigs.k8s.io/)
- [Helm](https://helm.sh/)

## Installation

Install [KubeCTL](https://kubernetes.io/docs/tasks/tools/), [Minikube](https://minikube.sigs.k8s.io/docs/start/) and [Helm](https://helm.sh/docs/helm/helm_install/).

## Usage

Create multiple pods based on templates along with the persistent and shared volume.

```sh
make create
```

List pods and pvcs.

```sh
kubectl get pods # kubectl describe pods name
```

```sh
kubectl get pvc # kubectl describe pvc name
```

Open the file that both pods are constantly writing.

```sh
kubectl exec pod-name -c container-name cat /data/hello_world.txt # Change `pod-name` and `container-name`, present in hello-word/templates/deployment.yaml
```

> Clean the resources `make clean`

## Documentation

Enable unmount of PVCs to remove them.

```sh
kubectl patch pvc pvc-name -p '{"metadata":{"finalizers":null}}' # Change `pvc-name`
```

Remove PVCs.

```sh
kubectl delete pvc pvc-name # Change `pvc-name`
```

## Contributing

Please, consider the following.

1. Make sure you code have quality, a.k.a standards
2. Make sure your code is secure
3. Make sure your code has no performance issues
4. Make sure your code is documented, if necessary
5. Describe the changes that were done

> No issue or PR template required, but be informative

## License

This project is not licensed under any license.
