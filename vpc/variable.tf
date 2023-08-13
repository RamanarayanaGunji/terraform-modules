
variable  "cidr"{
type = string
}
variable "tags"{
     type = map
     default = {
      Name = vpc
      }
  }
