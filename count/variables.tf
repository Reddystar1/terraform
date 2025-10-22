variable "instance" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z10225341OKKJ5ODTVYKC"
}

variable "domain_name" {
    default = "daws86.space" 
}