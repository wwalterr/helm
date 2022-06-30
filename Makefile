# New project `helm create project-name`

create:
	helm install hello-world-1 hello-world --values ./hello-world/values_1.yaml

	helm install hello-world-2 hello-world --values ./hello-world/values_2.yaml

upgrade:
	helm upgrade hello-world-1 hello-world --values ./hello-world/values_1.yaml

	helm upgrade hello-world-2 hello-world --values ./hello-world/values_2.yaml

clean:
	helm ls --all --short | xargs -L1 helm delete
	
	kubectl delete all --all