resource "aws_codecommit_repository" "tfer--MLOps-with-MLFlow" {
  description     = "operationalizing machine learning "
  repository_name = "MLOps-with-MLFlow"
}

resource "aws_codecommit_repository" "tfer--chord-vault" {
  description     = "a collection of guitar chord text files\norganized and curated for readability. \n"
  repository_name = "chord-vault"
}

resource "aws_codecommit_repository" "tfer--cocktail-vault" {
  description     = "a collection of cocktail recipe text files organized and curated"
  repository_name = "cocktail-vault"
}
