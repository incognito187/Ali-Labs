terraform{
  required_version = ">= 0.12"
}

provider "alicloud" {
  
  region = "cn-hongkong"
}

variable "cassandra_name" {
  default = "cassandra"
}

# variable "creation" {
#   default = "Cassandra"
# }

data "alicloud_zones" "default" {
  #   available_resource_creation = var.creation
}

resource "alicloud_vpc" "default" {
  vpc_name   = "vpc-test"
  cidr_block = "172.16.0.0/16"
}

resource "alicloud_vswitch" "default" {
  vpc_id       = alicloud_vpc.default.id
  cidr_block   = "172.16.0.0/24"
  zone_id      = data.alicloud_zones.default.zones[0].id
  vswitch_name = "vsw-test"
}

resource "alicloud_cassandra_cluster" "default" {
  cluster_name        = "cassandra-cluster-name-tf"
  data_center_name    = "dc-1"
  auto_renew          = "false"
  instance_type       = "cassandra.c.large"
  major_version       = "3.11"
  node_count          = "2"
  pay_type            = "PayAsYouGo"
  vswitch_id          = alicloud_vswitch.default.id
  disk_size           = "160"
  disk_type           = "cloud_ssd"
  maintain_start_time = "18:00Z"
  maintain_end_time   = "20:00Z"
  ip_white            = "127.0.0.1"
}