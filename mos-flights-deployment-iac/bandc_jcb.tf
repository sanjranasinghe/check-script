resource "aws_launch_template" "bandc" {
  name_prefix   = var.lunch_name
  image_id      = "var.ami_id_bandc_jcb"
  instance_type = "t2.micro"

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 20
    }
  }

  monitoring {
    enabled = true
  }
}

resource "aws_autoscaling_group" "bandc_asg" {
  availability_zones = ["eu-west-2a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.bandc.id
    version = "$Latest"
  }
}
