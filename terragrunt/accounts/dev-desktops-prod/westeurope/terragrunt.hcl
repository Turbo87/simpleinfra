terraform {
  source = "../../../modules//dev-desktops-azure"
}

include {
  path           = find_in_parent_folders()
  merge_strategy = "deep"
}

inputs = {
  location = "West Europe"
  instances = {
    "dev-desktop-eu-2" = {
      instance_type = "Standard_F32s_v2"
      storage       = 1000
    }
  }
}
