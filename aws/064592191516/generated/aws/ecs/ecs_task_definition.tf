resource "aws_ecs_task_definition" "tfer--task-definition-002F-hello-world-task" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"064592191516.dkr.ecr.us-east-1.amazonaws.com/hello-world\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/hello-world-task\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"hello-world\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"hello-world-80-tcp\",\"protocol\":\"tcp\"}],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::064592191516:role/ecsTaskExecutionRole"
  family                   = "hello-world-task"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-mlflow-task" {
  container_definitions = "[{\"cpu\":0,\"environment\":[{\"name\":\"MLFLOW_S3_ENDPOINT_URL\",\"value\":\"s3://064592191516-mlflow/artifacts\"}],\"environmentFiles\":[],\"essential\":true,\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://localhost:80/health || exit 1\"],\"interval\":30,\"retries\":1,\"startPeriod\":100,\"timeout\":10},\"image\":\"064592191516.dkr.ecr.us-east-1.amazonaws.com/mlflow:2.9.2\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/mlflow-task\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"mlflow\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"mlflow-80-tcp\",\"protocol\":\"tcp\"}],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                   = "256"

  ephemeral_storage {
    size_in_gib = "21"
  }

  execution_role_arn       = "arn:aws:iam::064592191516:role/ecsTaskExecutionRole"
  family                   = "mlflow-task"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::064592191516:role/MLFlowECSTaskExecutionRole"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-mlflow-tf-s03-train-task" {
  container_definitions    = "[{\"command\":[\"mlflow_tf/s03_train_sans_mlflow.lambda_handler\"],\"cpu\":2048,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"064592191516.dkr.ecr.us-east-1.amazonaws.com/mlflow-tf:2.0.3\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/mlflow-tf-s03-train-task\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"memory\":8192,\"memoryReservation\":8192,\"mountPoints\":[],\"name\":\"mlflow-tf\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"mlflow-tf-80-tcp\",\"protocol\":\"tcp\"}],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "4096"
  execution_role_arn       = "arn:aws:iam::064592191516:role/ecsTaskExecutionRole"
  family                   = "mlflow-tf-s03-train-task"
  memory                   = "8192"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::064592191516:role/ecsTaskExecutionRole"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-wilsonify_github_io" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"064592191516.dkr.ecr.us-east-1.amazonaws.com/wilsonify.github.io:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"webpage\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"webpage-80-tcp\",\"protocol\":\"tcp\"}],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::064592191516:role/ecsTaskExecutionRole"
  family                   = "wilsonify_github_io"
  memory                   = "3072"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}
