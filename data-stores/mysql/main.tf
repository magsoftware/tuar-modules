terraform {
  required_version = ">= 0.12, < 0.13"
}


resource "aws_db_instance" "example" {
  identifier_prefix    = "magsoftware-terraform"
  allocated_storage    = 10
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  skip_final_snapshot  = true

  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
}
