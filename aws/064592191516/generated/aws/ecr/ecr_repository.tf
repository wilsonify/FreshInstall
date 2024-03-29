resource "aws_ecr_repository" "tfer--mlflow" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "mlflow"
}

resource "aws_ecr_repository" "tfer--mlflow-sklearn" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "mlflow-sklearn"
}

resource "aws_ecr_repository" "tfer--mlflow-sklearn-build" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "mlflow-sklearn-build"
}

resource "aws_ecr_repository" "tfer--mlflow-tf" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "mlflow-tf"
}

resource "aws_ecr_repository" "tfer--mlflow-tf-build" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "mlflow-tf-build"
}

resource "aws_ecr_repository" "tfer--s01-wine-scrape-base" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "s01-wine-scrape-base"
}

resource "aws_ecr_repository" "tfer--s01_wine_scrape" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "s01_wine_scrape"
}

resource "aws_ecr_repository" "tfer--stable-diffusion-cpuonly" {
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:us-east-1:064592191516:key/83dec65c-2291-42e6-8116-187471e14532"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "stable-diffusion-cpuonly"
}
