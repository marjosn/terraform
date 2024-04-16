output "instance_ami" {
  value = aws_instance.web[count.index].ami
}

output "instance_arn" {
  value = aws_instance.web[count.index].arn
}
