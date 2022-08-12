  variable "instance_class" {
    default = "db.r4.large"
  }
 variable "aws_cluster_identifier" {
   default = "dbname"
 }
 variable "aws_cluster_identifier-reader1" {
   default = "dbname"
 }
 variable "aws_cluster_identifier-reader2" {
   default = "dbname"
 }
 variable "aws_cluster_identifier-reader3" {
   default = "dbname"
 }
 variable "aws_cluster_identifier-writer" {
   default = "dbname"
 }
 variable "engine" {
   default = "aurora"
   type    = string
 }
 variable "engine_version" {
   default = "8.0.28"
 }
 variable "database_name" {
   default = "dbname"
 }
 variable "master_username" {
   default = "team1db"
 }
 variable "name" {
   type = string
 }
 variable "vpc_id" {
   type = string
 }
   variable "subnet_ids" {
    type = list
  }
 variable "allowed_security_groups" {
   type = string
 }
 variable "allowed_cidr_blocks" {
 type = list(string)
 }
 variable "region" {
   type = string
 }
 variable "master_password" {
   default = "Str0ngP4ssw0rD"
 }
 variable "aws_db_subnet_group_name" {
   type = string
 }

 variable "vpc_security_group_id" {
   type = string
 }

 variable "allocated_storage" {
   type = number
 }

  variable "DOMAIN" {
    type = string
  }

  variable "ZONEID" {
    type = string
  }
variable "vpc_id" {
  type = string
}

   variable "subnet_ids" {
     type = string
   }








