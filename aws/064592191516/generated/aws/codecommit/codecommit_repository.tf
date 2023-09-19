resource "aws_codecommit_repository" "tfer--Opti3D" {
  repository_name = "Opti3D"
}

resource "aws_codecommit_repository" "tfer--brewlab" {
  repository_name = "brewlab"
}

resource "aws_codecommit_repository" "tfer--lyrics" {
  repository_name = "lyrics"
}
