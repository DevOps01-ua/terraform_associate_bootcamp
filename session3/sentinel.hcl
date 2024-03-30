mock "tfconfig/v2" {
  module {
    source = "./sentinel/mock-tfconfig-v2.sentinel"
  }
}

policy "restirct-vcp-and-instance-policies" {
  source = "./sentinel/enforce-vpc-and-instance-policies.sentinel"
  enforcement_level = "hard-mandatory"
}