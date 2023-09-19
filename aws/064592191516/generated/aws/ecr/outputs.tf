output "aws_ecr_repository_policy_tfer--s01-scrape_id" {
  value = "${aws_ecr_repository_policy.tfer--s01-scrape.id}"
}

output "aws_ecr_repository_policy_tfer--s02-create-dataset_id" {
  value = "${aws_ecr_repository_policy.tfer--s02-create-dataset.id}"
}

output "aws_ecr_repository_policy_tfer--s03-fit_id" {
  value = "${aws_ecr_repository_policy.tfer--s03-fit.id}"
}

output "aws_ecr_repository_policy_tfer--s04-predict_id" {
  value = "${aws_ecr_repository_policy.tfer--s04-predict.id}"
}

output "aws_ecr_repository_policy_tfer--s05-score_id" {
  value = "${aws_ecr_repository_policy.tfer--s05-score.id}"
}

output "aws_ecr_repository_policy_tfer--transcode_video_python_id" {
  value = "${aws_ecr_repository_policy.tfer--transcode_video_python.id}"
}

output "aws_ecr_repository_tfer--s01-scrape_id" {
  value = "${aws_ecr_repository.tfer--s01-scrape.id}"
}

output "aws_ecr_repository_tfer--s02-create-dataset_id" {
  value = "${aws_ecr_repository.tfer--s02-create-dataset.id}"
}

output "aws_ecr_repository_tfer--s03-fit_id" {
  value = "${aws_ecr_repository.tfer--s03-fit.id}"
}

output "aws_ecr_repository_tfer--s04-predict_id" {
  value = "${aws_ecr_repository.tfer--s04-predict.id}"
}

output "aws_ecr_repository_tfer--s05-score_id" {
  value = "${aws_ecr_repository.tfer--s05-score.id}"
}

output "aws_ecr_repository_tfer--transcode_video_python_id" {
  value = "${aws_ecr_repository.tfer--transcode_video_python.id}"
}
