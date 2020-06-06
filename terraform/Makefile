.PHONY: init
init:
	gsutil mb gs://k8s_skel_terraform_state/
	terragrunt init

.PHONY: apply
apply:
	terragrunt apply gke


.PHONY: destroy
destroy:
	terragrunt destroy gke
