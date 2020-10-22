create-variables:
	cp variables/ansible_sample.json variables/ansible.json
	cp variables/terraform_sample.json variables/terraform.json
	cp variables/packer_sample.json variables/packer.json

packer-build:
	packer build -var-file=variables/packer.json packer/

terraform-init:
	terraform init terraform/

terraform-apply:
	terraform apply -var-file=variables/terraform.json terraform/

terraform-destroy:
	terraform destroy -var-file=variables/terraform.json terraform/
