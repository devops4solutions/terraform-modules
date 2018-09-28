

resource "aws_instance" "web-ec2" {

        ami = "${var.ami_id}"
        instance_type = "${var.instance_type}"

//put this ec2 instance inside a subnet which is inside a vpc

        subnet_id = "${var.subnet_id}"
}
