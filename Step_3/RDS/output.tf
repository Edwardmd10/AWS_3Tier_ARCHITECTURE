output "reader_endpoint1" {
  value = aws_rds_cluster.default.reader_endpoint
}

output "writer_endpoint1" {
  value = aws_rds_cluster.default.endpoint
}

output "aws_db_subnet_group" {
  value = aws_db_subnet_group.db_subnet
}

output "aws_rds_cluster" {
  value     = aws_rds_cluster.default
  sensitive = true
}

output "aws_rds_cluster_instance-reader1" {
  value = aws_rds_cluster_instance.cluster_instances-reader1
}

output "aws_rds_cluster_instance-reader2" {
  value = aws_rds_cluster_instance.cluster_instances-reader2
}

output "aws_rds_cluster_instance-reader3" {
  value = aws_rds_cluster_instance.cluster_instances-reader3
}

output "aws_rds_cluster_instance-writer" {
  value = aws_rds_cluster_instance.cluster_instances-writer
}

output "db_subnet" {
  value = aws_security_group.db_security
}