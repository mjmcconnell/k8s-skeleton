.PHONY: docker.build
docker.build:
	docker build -t k8s-skeleton .

.PHONY: docker.run
docker.run:
	docker run -it k8s-skeleton /bin/bash

.PHONY: terraform.init
terraform.init:
	gsutil mb gs://k8s_skel_terraform_state/
	terraform init terraform

.PHONY: terraform.apply
terraform.apply:
	terraform apply terraform


.PHONY: terraform.destroy
terraform.destroy:
	terraform destroy terraform
