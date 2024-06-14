locals {
  metastore_name_interpolated = "${var.metastore_name}-${var.prefix_name}-${lower(replace(var.location, " ", ""))}"
}
