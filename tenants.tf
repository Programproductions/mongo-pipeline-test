variable "tenant_namespaces" {type = map(object({
    name      = string
    tenant_id = string
"rafico" = {"name":"RAFICO","tenant_id":"rafi789"}}))
  default = {
    "chubb" = { name = "Chubb", tenant_id = "chubb123" },
    "ibm"   = { name = "IBM", tenant_id = "ibm546" }

  }
}
