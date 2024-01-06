help:      ## Azure landing zone help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

init: ## Initialised Modules
	cd deploy/${service} && terraform init
validate:  ## Validate Modules
	 cd deploy/${service} && terraform validate
plan:      ## Plan Modules
	 cd deploy/${service}  && terraform plan -var-file="terraform.tfvars"

apply:     ## Apply Modules
	cd deploy/${service} && terraform apply -var-file="terraform.tfvars" --auto-approve

destroy:   ## Destroy Modules
	cd deploy/${service} && terraform validate && terraform destroy --auto-approve && rm -rf .terraform .terraform.lock.hcl terraform.tfstate terraform.tfstate.backup

clean:   ## Clean
	cd deploy/${service} &&  rm -rf .terraform .terraform.lock.hcl terraform.tfstate terraform.tfstate.backup
all: init validate plan apply

