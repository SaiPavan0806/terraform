variable "instance" {
    default =[ "mongodb", "rabbitmq", "redis", "mysql", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z0531895FHVQAQ3TAJWF"
}

variable "domain_name" {
    default = "daws86s.online"
}