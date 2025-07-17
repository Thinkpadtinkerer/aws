provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "postgresql" {
  identifier         = "mypg"
  engine             = "postgres"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
  username           = "admin"
  password           = "SuperSecret123"
  skip_final_snapshot = true
  publicly_accessible = true

  db_name = "mydb"

  vpc_security_group_ids = []
  db_subnet_group_name   = "default"

  tags = {
    Name = "RDS-POC"
  }
}
