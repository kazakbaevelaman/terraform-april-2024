  resource "null_resource" "hello" {
    triggers = {   // will always trigger null resource 
        always_run = "${timestamp()}"
}

    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host     = aws_instance.web.public_ip 
  }

  provisioner "remote-exec" { // will execute on remote without copy 
    inline = [ 
        "sudo yum install httpd -y",
        "sudo yum install git -y"
     ]
  }
  }