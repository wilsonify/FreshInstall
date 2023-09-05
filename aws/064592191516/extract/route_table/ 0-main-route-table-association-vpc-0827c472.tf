resource "aws_main_route_table_association" "tfer--vpc-0827c472" {
  route_table_id = data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-69f12a16_id
  vpc_id         = "vpc-0827c472"
}

resource "aws_main_route_table_association" "tfer--vpc-0827c472" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-69f12a16_id}"
  vpc_id         = "vpc-0827c472"
}

