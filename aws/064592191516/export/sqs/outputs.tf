output "aws_sqs_queue_tfer--serverless-video-transcode-sqs-done_arn" {
  value = "${aws_sqs_queue.tfer--serverless-video-transcode-sqs-done.arn}"
}

output "aws_sqs_queue_tfer--serverless-video-transcode-sqs-done_id" {
  value = "${aws_sqs_queue.tfer--serverless-video-transcode-sqs-done.id}"
}

output "aws_sqs_queue_tfer--serverless-video-transcode-sqs-fail_arn" {
  value = "${aws_sqs_queue.tfer--serverless-video-transcode-sqs-fail.arn}"
}

output "aws_sqs_queue_tfer--serverless-video-transcode-sqs-fail_id" {
  value = "${aws_sqs_queue.tfer--serverless-video-transcode-sqs-fail.id}"
}

output "aws_sqs_queue_tfer--serverless-video-transcode-sqs-try_arn" {
  value = "${aws_sqs_queue.tfer--serverless-video-transcode-sqs-try.arn}"
}

output "aws_sqs_queue_tfer--serverless-video-transcode-sqs-try_id" {
  value = "${aws_sqs_queue.tfer--serverless-video-transcode-sqs-try.id}"
}
