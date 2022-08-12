variable "vpc_name" {
  description = "Provide vpc name"
  type = string
  default = ""
  
}

variable "region" {
  description = "Please provide a region"
  type        = string
  default     = ""
}

variable "availability_zone" {
  description = "Provide availability zone"
  type = string
  default = ""
  
}
variable "cidr_block" {
  description = "Please provide CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Please provide a tag for resources"
  type        = map(any)
  default     = {}
}
variable "public-1" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = "10.0.101.0/24"
}
variable "public-2" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = "10.0.102.0/24"
}
variable "public-3" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = "10.0.103.0/24"
}
variable "private-1" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}
variable "private-2" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = "10.0.2.0/24"
}
variable "private-3" {
  description = "Please provide subnet CIDR block for private-3"
  type        = string
  default     = "10.0.3.0/24"
}

#DATABASE CODE


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

