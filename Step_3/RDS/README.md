dev.tfvars: 
region                  = "eu-west-2"
allocated_storage       = 20
engine                  = "mysql"
engine_version          = "8.0.28"
instance_class          = "db.t2.micro"
db_name                 = "mydb"
name                    = "mydb"
username                = "foo"
publicly_accessible     = true
instance_tenancy        = "default"
enable_dns_host_names   = true
enable_dns_support      = true
#allowed_cidr_blocks     = "0.0.0.0/0"
allowed_security_groups = "default"
subnet_ids = [
  "SUBNET-IDS",
]
aws_db_subnet_group_name = "project_sg"
vpc_id                   = "VPC-ID"
vpc_security_group_id    = "SECURITY-GROUP-ID "