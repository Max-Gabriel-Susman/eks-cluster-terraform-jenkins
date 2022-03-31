
output "master_ip" {
  value = "${aws_spot_instance_request.k8s-master.public_ip}"
}

output "worker_ips" {
  value = "${aws_spot_instance_request.k8s-worker.*.public_ip}"
}