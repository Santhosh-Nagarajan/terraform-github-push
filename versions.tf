terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.18.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "github" {
  # Configuration options
  token = "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"
  owner = "Santhosh-Nagarajan"
}

provider "null" {
  # Configuration options
}


