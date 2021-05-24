resource "local_file" "foo" {
    content     = terraform.workspace
    filename = "${path.module}/sample"
}
