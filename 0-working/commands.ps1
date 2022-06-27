
terraform init

terraform validate

terraform plan -out "underwriting-deployment.tfplan"

terraform apply "underwriting-deployment.tfplan"

terraform show "underwriting-deployment.tfplan"

terraform destroy
