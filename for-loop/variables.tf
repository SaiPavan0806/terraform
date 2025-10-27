variable "instance" {
    #default =[ "mongodb", "rabbitmq", "redis", "mysql", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro" 
        mysql = "t3.micro"
    }
}

variable "zone_id" {
    default = "Z0531895FHVQAQ3TAJWF"
}

variable "domain_name" {
    default = "daws86s.online"
}