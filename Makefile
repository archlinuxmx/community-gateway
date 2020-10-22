VARIABLES_FILE=variables.json

create-variables:
	test -f $(VARIABLES_FILE) || cp sample_variables.json $(VARIABLES_FILE)

packer-build:
	packer build -var-file=$(VARIABLES_FILE) packer/

terraform-init:
	terraform init terraform/

terraform-apply:
	terraform apply -var-file=$(VARIABLES_FILE) terraform/

terraform-destroy:
	terraform destroy -var-file=$(VARIABLES_FILE) terraform/
