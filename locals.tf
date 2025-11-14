locals{
    type = map(string)
    common_tags = {
        Project = var.project_name
        Environment = var.Environment
        Terraform = true
    }
    common_name_suffix = "${var.project_name}-${var.Environment}" # roboshop-dev
    # az_names = slice(data.aws_availability_zones.available.names, 0, 2 )
}