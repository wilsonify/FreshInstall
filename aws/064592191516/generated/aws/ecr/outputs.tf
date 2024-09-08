output "aws_ecr_repository_policy_tfer--mlflow-tf_id" {
  value = "${aws_ecr_repository_policy.tfer--mlflow-tf.id}"
}

output "aws_ecr_repository_policy_tfer--s01_wine_scrape_id" {
  value = "${aws_ecr_repository_policy.tfer--s01_wine_scrape.id}"
}

output "aws_ecr_repository_tfer--mlflow-sklearn_id" {
  value = "${aws_ecr_repository.tfer--mlflow-sklearn.id}"
}

output "aws_ecr_repository_tfer--mlflow-tf_id" {
  value = "${aws_ecr_repository.tfer--mlflow-tf.id}"
}

output "aws_ecr_repository_tfer--s01_wine_scrape_id" {
  value = "${aws_ecr_repository.tfer--s01_wine_scrape.id}"
}
