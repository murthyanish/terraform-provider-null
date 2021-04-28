resource "betternull_resource" "cluster" {
  # Changes to any instance of the cluster requires re-provisioning
  triggers = {
    trigger_1 = "abcd"
  }

  non_triggers = {
    static_1 = "ijkl"
  }

  provisioner "local-exec" {
    command  = "echo ${self.triggers.trigger_1} ${self.non_triggers.static_1}"
  }
}