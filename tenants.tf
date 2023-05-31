variable "tenant_namespaces" {
  type = map(object({
    name      = string
    tenant_id = string
  }))
  default = {
    "chubb" = { name = "Chubb", tenant_id = "chubb123" }
    "ibm"   = { name = "IBM", tenant_id = "ibm546" }
  }
}
