resource "aws_launch_template" "bandc_so" {
  name_prefix   = "bandc_so"
  image_id      = var.ami_id_bandc_so
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

resource "aws_autoscaling_group" "so_asg" {
  availability_zones = ["ap-southeast-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.bandc_so.id
    version = "$Latest"
  }
}
