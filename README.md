#  Terraform AWS EC2 Lab

##  Overview
This project demonstrates infrastructure provisioning using Terraform on AWS.

##  Architecture
Terraform → AWS → Security Group → EC2 Instance

## Technologies Used
- Terraform
- AWS EC2
- IAM Role (no access keys used)

## What it does
- Creates a security group allowing SSH and HTTP
- Launches an EC2 instance
- Outputs public and private IP

##  Files
- provider.tf → AWS provider config
- main.tf → infrastructure definition
- outputs.tf → output values

## Commands Used
terraform init
terraform plan
terraform apply
terraform destroy

<img width="1245" height="441" alt="image" src="https://github.com/user-attachments/assets/171f998f-55dd-419d-aa4a-c38301858a82" />

<img width="1099" height="52" alt="image" src="https://github.com/user-attachments/assets/5ee40318-ca73-4e64-b4e9-95c2a522d2b7" />



## Security Best Practice
Used IAM role instead of AWS access keys for authentication.

## Author
Narayana KS
