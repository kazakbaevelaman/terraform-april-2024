provider "aws" {
  region = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "bastion-kaizen"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "web" {
 ami                    = "ami-0649bea3443ede307"
 instance_type          = "t2.micro"
 key_name = aws_key_pair.deployer.key_name
 vpc_security_group_ids = [aws_security_group.allow_tls.id]



#   provisioner "file" {
#     source = "./apache.sh" //local instance 
#     destination = "./apache.sh" //remote instance 
#   }

# // will run on newly created instance  
# provisioner "remote-exec" {
#    inline = [
#         "sudo chmod +x apache.sh", 
#         "./apache.sh"
#    ]  
#  }
}


// local exec will be executed in the local machine
# resource "null_resource" "hello" {
#    provisioner "local-exec" {
#    command = "mkdir kaizen && touch hello"
#  }
# }