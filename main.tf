resource "local_file" "foo" {
    content     = terraform.workspace
    filename = "${path.module}/sample"
}

resource "random_integer" "num" {
  min = 1
  max = 50000
}

output "result" {
  value = random_integer.num.result
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "resultstr" {
  value = random_string.random.result
}
