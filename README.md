# iac-terraform-aws-example-01
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

Step 4 : Run terraform script for lunch EC2
-----------------------------------------------------------------------
Run below command you need to navigate to specific folder 
for my case the folder is -  c:\workspace\tarraform\iac-terraform-aws-basic-01\lunch-ec2\
-> terraform init 
-> terraform validate
-> terraform fmt  // its optional just formating the script 
-> terraform plan
-> terraform apply   and enter "yes" to final execution 


