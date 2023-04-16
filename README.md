# iac-terraform-aws-basic-01
Infrastructure as  code  by terraform by aws cli - Create  Instance,
execute from local laptop to aws infrastructure
===================================================================

Step 1 : Review / Recap -  Terraform installation in Window machine
---------------------------------------------------------------------
-> download terraform terraform site 
-> unzip and extract to folder lets say c:\terraform\terraform.exe
-> create a environment varible for user as well as system 
   path=c:\terraform\ (add it end of string carefully) 

Step 2 : Review / recap - AWS Access key & permission setup  
-----------------------------------------------------------------------
-> open aws management console 
-> open IAM dashboard
-> create new user, give admin full access 
-> generate access_key  and secret_key 
-> download the csv 

Step 3 : Review / recap - Configuration of aws cli in local laptop 
-----------------------------------------------------------------------
open gitbash and execute the following command 
-> aws configure   (enter)
-> AWS Access Key ID : XXCXCXCXCXXCXC
-> Secret Access Key : SDDDDDDDDDDDDDDDDSDSDDSDSD
-> Default region name : ap-south-2
-> Default output format [json] : json

Step 4 : Create terraform script 
-----------------------------------------------------------------------
write following script and save in a folder 
for my case c:\workspace\tarraform\iac-terraform-aws-basic-01\main.tf

provider "aws" {
   region ="ap-south-1"
}

resource "aws_instance" "intro"{
   ami="ami-0283a57753b18025b"
   instance_type=""
   availability_zone="t2.micro"
   key_name="xxxxxxx"
   tags={
      Name="terrform_ec2_web"
   }
}


Step 5 : Execute the script 
------------------------------------------------------------------------
to run below command you need to navigate to specific folder 
for my case the folder is -  c:\workspace\tarraform\iac-terraform-aws-basic-01\
-> terraform init 
-> terraform validate
-> terraform fmt  // its optional just formating the script 
-> terraform plan
-> terraform apply   and enter "yes" to final execution 


