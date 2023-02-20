resource "github_repository" "foo" {
  name      = "tf-acc-test"
  auto_init = true
}

resource "github_repository_file" "foo" {
  repository          = github_repository.foo.name
  branch              = "master"
  file                = "*.txt"
  content             = "**/*.tfstate"
  commit_message      = "Managed second by Terraform"
  commit_author       = "Santhosh-Nagarajan"
  commit_email        = "nsmgbros001@gmail.com"
  overwrite_on_create = true
}


resource "null_resource" "github" {
  provisioner "local-exec" {
    command = "git init && git add . && git commit -m '${var.commit}' && git remote add origin https://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@github.com/Santhosh-Nagarajan/tf-acc-test.git && git push -u -f origin master"
  }
}

