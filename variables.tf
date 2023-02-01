variable "resource_group_name" {
  description = "(Required)A container that holds related resources for an Azure solution."
  type        = string
}

variable "location" {
  description = "(Required)The location to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'."
  type        = string
}

variable "private_dns_zone_name" {
  description = "(Required)Private dns zone name."
  type        = string
}

variable "private_dns_zone_ids" {
  description = "(Optional)Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
  type        = list(string)
  default     = []
}

variable "virtual_network_links" {
  description = "(Optional)These Links enable DNS resolution."
  type = map(object({
    virtual_network_id = string
  }))
  default = {}
}

variable "a_records" {
  description = "(Optional)List of A records, ttl-The Time To Live (TTL) of the DNS record in seconds, records-List of IPv4 Addresses."
  type = map(object({
    ttl     = number
    records = optional(list(string))
  }))
  default = {}
}

variable "registration_enabled" {
  description = "(Optional)Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?"
  type        = bool
  default     = false
}