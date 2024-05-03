
resource_group_name  = "rg-tfstate-juno-noe"
storage_account_name = "sttfstatejuno"
container_name       = "terraform-state"
key                  = "observability.tfstate"
use_oidc             = true
use_azuread_auth     = true
