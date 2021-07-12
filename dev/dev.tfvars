region             = "us-east-1"
clustername        = "rootdev"
ecs_name           = "rootdevservice"        # Naming our first service
image              = "rootdevs/reliability-interview-container:201805"
desired_count      = 3                       # Setting the number of containers to Default 3
container_port     = 4567
host_port          = 4567