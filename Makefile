.PHONY: help create-variables build init plan apply destroy
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

create-variables: ## create variables files
	@cp ansible/vars/ansible_sample.json ansible/vars/ansible.json
	@cp variables/variables_sample.json variables/variables.json

generate-docs: ## generate documentation for variables
	@terraform-docs markdown terraform/ > README.md

build: ## build the packer image
	@packer build -var-file=variables/variables.json packer/

init: ## generate documentation using pdoc
	@terraform -chdir=terraform init

plan: ## plan infraestructure
	@terraform -chdir=terraform plan -var-file=../variables/variables.json

apply: ## create infraestructure
	@terraform -chdir=terraform apply -var-file=../variables/variables.json

destroy: ## destroy infrastructure
	@terraform -chdir=terraform destroy -var-file=../variables/variables.json
