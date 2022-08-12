region                = "us-east-1"
allocated_storage     = 10
engine                = "mysql"
engine_version        = "8.0.28"
instance_class        = "db.t2.micro"
db_name               = "mydb"
name                  = "mydb"
username              = "foo"
publicly_accessible   = true
instance_tenancy      = "default"
enable_dns_host_names = true
enable_dns_support    = true
#allowed_cidr_blocks     = "0.0.0.0/0"
allowed_security_groups = "default"
# subnet_ids = [
#   "subnet-043d422545e72f994"
# ]
# aws_db_subnet_group_name = "db_subnet"
# vpc_id                   = "vpc-02555ff93024c617f"
# vpc_security_group_id    = "sg-06f1554ae101dd8aa"