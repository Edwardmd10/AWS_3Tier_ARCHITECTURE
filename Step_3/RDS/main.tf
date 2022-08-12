#Default VPC
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# Subnets for Default VPC
data "aws_subnet_ids" "subnet" {
  vpc_id = aws_default_vpc.default.id
}

resource "aws_db_subnet_group" "db_team1" {
  name       = "db_team1" #var.aws_db_subnet_group_name
  subnet_ids = data.aws_subnet_ids.subnet.id #var.subnet_ids
}
resource "aws_rds_cluster" "default" {
  cluster_identifier        = "dbname"
  engine                    = "aurora"
  db_cluster_instance_class = "db.r4.large"
  database_name             = "dbname"
  storage_type              = "io1"
  allocated_storage         = 100
  iops                      = 1000
  master_username           = "team1db"
  # master_password      = random_password.password.result
  master_password        = "Str0ngP4ssw0rD"
  db_subnet_group_name   = aws_db_subnet_group.db_team1.name
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.vpc_security_group_id]
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  db_subnet_group_name = aws_db_subnet_group.db_team1.name
  identifier           = "aurora-cluster-demo"
  cluster_identifier   = aws_rds_cluster.default.cluster_identifier
  instance_class       = "db.r4.large"
  engine_version       = aws_rds_cluster.default.engine_version
  engine               = aws_rds_cluster.default.engine
}
resource "aws_rds_cluster_instance" "cluster_instances-writer" {
  db_subnet_group_name = aws_db_subnet_group.db_team1.name
  identifier           = "aurora-cluster-demo-writer"
  cluster_identifier   = aws_rds_cluster.default.cluster_identifier
  instance_class       = "db.r4.large"
  engine_version       = "8.0.28"
  engine               = "dbname"
}
resource "aws_rds_cluster_instance" "cluster_instances-reader1" {
  db_subnet_group_name = aws_db_subnet_group.db_team1.name
  identifier           = "aurora-cluster-demo-reader1"
  cluster_identifier   = aws_rds_cluster.default.cluster_identifier
  instance_class       = "db.r4.large"
  engine_version       = "8.0.28"
  engine               = "dbname"
}
resource "aws_rds_cluster_instance" "cluster_instances-reader2" {
  db_subnet_group_name = aws_db_subnet_group.db_team1.name
  identifier           = "aurora-cluster-demo-reader2"
  cluster_identifier   = aws_rds_cluster.default.cluster_identifier
  instance_class       = "db.r4.large"
  engine_version       = "8.0.28"
  engine               = "dbname"
}
resource "aws_rds_cluster_instance" "cluster_instances-reader3" {
  db_subnet_group_name = aws_db_subnet_group.db_team1.name
  identifier           = "aurora-cluster-demo-reader3"
  cluster_identifier   = aws_rds_cluster.default.cluster_identifier
  instance_class       = "db.r4.large"
  engine_version       = "8.0.28"
  engine               = "dbname"
}
output "reader_endpoint" {
  value = aws_rds_cluster.default.reader_endpoint
}
output "writer_endpoint" {
  value = aws_rds_cluster.default.endpoint
}
