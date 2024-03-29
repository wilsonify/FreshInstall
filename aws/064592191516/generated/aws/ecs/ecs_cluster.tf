resource "aws_ecs_cluster" "tfer--thom-ecs-cluster" {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "thom-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
