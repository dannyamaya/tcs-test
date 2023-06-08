TCS - TCS Technical Test

# Terraform EC2 Instance in Private Subnet

This Terraform project demonstrates the creation of an EC2 instance in a private subnet using AWS. The project provisions a Virtual Private Cloud (VPC), creates a private subnets, launches an EC2 instance in the private subnet, and executes user data to configure the instance.

## Prerequisites

Before you begin, ensure that you have the following:

- AWS account credentials with appropriate permissions
- Terraform installed on your local machine

## Getting Started

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/dannyamaya/tcs-test.git


2. Navigate to the project directory:
      
    ```shell  
    cd tcs-test

3. Initialize the Terraform project:

   ```shell
    terraform init

4. Modify the `variables.tf` file to adjust the instance type, EBS size, and other configuration parameters if needed.

5. Optionally, update the AWS region in `main.tf` if you want to use a different region.

6. Review the `user_data.sh` script located in the `ec2_instance` directory. Modify it if necessary to adjust the desired instance setup actions.

7. Run the Terraform plan command to preview the changes:

    ```shell
    terraform plan

8. If the plan looks satisfactory, apply the changes to create the infrastructure:

    ```shell
    terraform apply


9. Once the deployment is complete, Terraform will display the EC2 instance details, including the public IP address if applicable.

## Clean Up

To destroy the resources created by this project and clean up your AWS account, run the following command:

   ```shell
   terraform destroy


