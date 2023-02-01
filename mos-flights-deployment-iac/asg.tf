resource "aws_launch_template" "foobar" {
  name_prefix   = "foobar"
  image_id      = var.ami_id_foobar
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

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["ap-southeast-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.foobar.id
    version = "$Latest"
  }
}
