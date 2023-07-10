variable project {
  type        = string
  default     = "Your project on GCP"
  description = "Project where the instances will be deployed"
}

variable keys {
  type        = string
  default     = "key of access  - not secure!!!!!"
  
}

variable region {
  type        = string
  default     = "region"
  description = "Define what region the instance gonna be deployed"
}

variable instance_type {

  default = "Type of instance"
  description = "Define the type of instance"


}

variable zone {
    default = "choose region"
}

variable os {
  type        = string
  # default     = "projects/centos-cloud/global/images/centos-7-v20230615"
  default = "image to deploy"
}

variable network_ip {
  type        = string
  default     = ""
  description = "Network Ip"
}

variable disk_size {

  default     = 30
 
}

variable connection_user {
  type        = string
  default     = ""
  description = "User to connect by ssh"
}




