# rootdevs
The container we use for our reliability team interview work sample.
## Task
The Mauve team is ready to deploy their app and needs your help deploying it. They have prepared the following Docker container that listens for HTTP requests on port 4567:

## Solution

I use AWS ECS for this task. But better way is utilizing kubernetes cluster with helm using terraform


1. Create AWS ECS cluster
2. Create ECS task
3. Create ECS service
4. Create a load balancer
5. Edit values.

## Key Takeoffs

* Variables are used to create resources based on the needs.
* I use local backend but we could use S3 bucket with DynamoDB lock as a backend
* Also, I use default VPC to make it simple

### Terraform versions

Terraform 0.13 and above are supported

### AWS version

AWS version ~3.0 is supported

## Inputs

```
region             = "us-east-1"
clustername        = "rootdev"
ecs_name           = "rootdevservice"        # Naming our first service
image              = "rootdevs/reliability-interview-container:201805"
desired_count      = 3                       # Setting the number of containers to Default 3
container_port     = 4567
host_port          = 4567
```

## Outputs

```
region = "us-east-1"
rootdev = "test-lb-tf-1278585322.us-east-1.elb.amazonaws.com"
```
## Installation
### Prerequisite
EC2 instance (You should have an access to your aws bastion host and have sufficient privileges.)
Terraform 
### Step 1 - Clone the repo

```
git clone https://github.com/turanmehmet/rootdevs.git
```
### Step 2 - Edit values.
```
cd rootdevs/dev && vi dev.tfvars
```
### Step 3 - Deploy the resources
```
terraform init
terraform apply -var-file=dev/dev.tfvars
```
### Step 4 - Test it
Copy the output rootdev load balancer dns name and paste it in your web browser
### Destroy the resources
```
terraform destroy
```
##   Author

Mehmet Turan

