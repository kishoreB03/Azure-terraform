variable "location"{
    type = string
}

variable "resource_group_name"{
    type = string
}

variable "vnet_name"{
    type = string
}

variable "vnet_address"{
    type = list(string)
}

variable "subnet_name"{
    type = string
}

variable "subnet_address"{
    type = map(string)
}

variable "tags"{
    type = map(string)
}
