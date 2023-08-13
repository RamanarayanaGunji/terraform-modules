
variable  "cidr"{
type = string
}
variable "tags"{
     type = map
     default = {
      Name = "vpc"
      }
  }
variable "igw-tags"{
      type = map
      default ={
      Name = "igw"
      }
   }
variable "public-subnet-tags"{
   type = map
  default = {
  Name = "public-subnet"
   }
}
variable "private-subnet-tags"{
   type = map
  default = {
  Name = "private-subnet"
   }
}
variable "public-route-table-tags"{
     type = map
     default ={
     Name = "public-route-table"
     }
}
variable "nat-tags"{
     type = map
     default ={
     Name = "nat"
     }
}
variable "private-route-table-tags"{
     type = map
     default ={
     Name = "private-route-table"
     }
}

