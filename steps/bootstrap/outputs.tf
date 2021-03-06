# Etcd
output "container_linux_version" {
  value = "${module.container_linux.version}"
}

output "etcd_instance_count" {
  value = "${length(data.template_file.etcd_hostname_list.*.id)}"
}

output "etcd_sg_id" {
  value = "${module.vpc.etcd_sg_id}"
}

output "s3_bucket" {
  value = "${aws_s3_bucket.tectonic.bucket}"
}

# Masters
output "aws_launch_configuration_masters" {
  value = "${module.masters.aws_launch_configuration}"
}

output "subnet_ids_masters" {
  value = "${module.masters.subnet_ids}"
}

output "aws_lbs_masters" {
  value = "${module.masters.aws_lbs}"
}

# Workers
output "aws_launch_configuration_workers" {
  value = "${module.workers.aws_launch_configuration}"
}

output "subnet_ids_workers" {
  value = "${module.workers.subnet_ids}"
}

# TNC
output "private_zone_id" {
  value = "${aws_route53_zone.tectonic_int.id}"
}

output "tnc_elb_dns_name" {
  value = "${module.vpc.aws_elb_tnc_dns_name}"
}

output "tnc_elb_zone_id" {
  value = "${module.vpc.aws_elb_tnc_zone_id}"
}
