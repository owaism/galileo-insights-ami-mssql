output "ami_mysql_db_instance_address" {
  description = "The address of the RDS instance"
  value       = "${aws_db_instance.ami_instance_two.address}"
}

output "ami_mysql_db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = "${aws_db_instance.ami_instance_two.arn}"
}

output "ami_mysql_db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = "${aws_db_instance.ami_instance_two.availability_zone}"
}

output "ami_mysql_db_instance_endpoint" {
  description = "The connection endpoint"
  value       = "${aws_db_instance.ami_instance_two.endpoint}"
}

output "ami_mysql_db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = "${aws_db_instance.ami_instance_two.hosted_zone_id}"
}

output "ami_mysql_db_instance_id" {
  description = "The RDS instance ID"
  value       = "${aws_db_instance.ami_instance_two.id}"
}

output "ami_mysql_db_instance_resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = "${aws_db_instance.ami_instance_two.resource_id}"
}

output "ami_mysql_db_instance_status" {
  description = "The RDS instance status"
  value       = "${aws_db_instance.ami_instance_two.status}"
}

output "ami_mysql_db_instance_name" {
  description = "The database name"
  value       = "${aws_db_instance.ami_instance_two.name}"
}

output "ami_mysql_db_instance_username" {
  description = "The master username for the database"
  value       = "${aws_db_instance.ami_instance_two.username}"
}

output "ami_mysql_db_instance_port" {
  description = "The database port"
  value       = "${aws_db_instance.ami_instance_two.port}"
}
