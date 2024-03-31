Terraform's declarative approach allows to describe the infrastructure in a high-level manner where it evaluates the current state of the infrastructure and determines what actions need to be taken to reach the desired state. Also, its idempotent nature means that applying the same configuration multiple times will result in the same end state as applying it once.

Pre-Requisites
- Install Terraform - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
- Configure credentials as per requirement.

`terraform init`: Prepare the working directory for operations by setting up the necessary dependencies and configurations specified in the files

`terraform plan`: Review the configuration before execution

`terraform apply`: Apply configuation to execute creation of resources.

`terraform refresh`: Terraform will not make any changes to existing infrastructure. Will update its state file to reflect the current state of resources.

`terraform destroy`: Delete configuration to delete resources.
