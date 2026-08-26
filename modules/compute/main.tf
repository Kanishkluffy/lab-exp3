resource "aws_instance" "web" {
  count                  = var.web_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.web_sg_id]
  key_name               = var.key_name

  user_data = <<-EOF
    #!/bin/bash
    apt-get update -y
    apt-get install -y nginx netcat-openbsd
    echo "web-${count.index + 1} $(hostname -I)" > /var/www/html/index.html
    systemctl enable --now nginx
  EOF

  tags = { Name = "web-${count.index + 1}", Tier = "web" }
}

resource "aws_instance" "db" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.private_subnet_id
  vpc_security_group_ids      = [var.db_sg_id]
  user_data_replace_on_change = true

  # Simulates a database service without needing an internet connection
  user_data = <<-EOF
    #!/bin/bash
    while true; do 
      python3 -m http.server 3306 || nc -l -p 3306
      sleep 1
    done &
  EOF

  tags = { Name = "db-01", Tier = "data" }
}
