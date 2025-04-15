output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${aws_vpc.main_infra_vpc.id}"
}

output "subnet_ids" {
  description = "List of IDs of public subnets"
  value       = "${aws_subnet.public_subnet[*].id}"
}

output "instance_public_ips" {
  description = "List of IDs of public subnets"
  value = "${aws_instance.lk_instance_web[*].public_ip}"
}

  