resource "aws_codecommit_repository" "tfer--DemoPackage-002E-jl" {
  description     = "example using PkgTemplates.jl"
  repository_name = "DemoPackage.jl"
}

resource "aws_codecommit_repository" "tfer--MLOps-with-MLFlow" {
  description     = "operationalizing machine learning "
  repository_name = "MLOps-with-MLFlow"
}

resource "aws_codecommit_repository" "tfer--Opti3D" {
  description     = "Optimization of 3D Printable Objects"
  repository_name = "Opti3D"
}

resource "aws_codecommit_repository" "tfer--brewlab" {
  description     = "Recommendation System for Homebrewing of Beer"
  repository_name = "brewlab"
}

resource "aws_codecommit_repository" "tfer--lyrics" {
  description     = "Generated Song Lyrics"
  repository_name = "lyrics"
}

resource "aws_codecommit_repository" "tfer--stable-diffusion-cpuonly" {
  description     = "Text to images without a high end graphics card"
  repository_name = "stable-diffusion-cpuonly"
}

resource "aws_codecommit_repository" "tfer--text-generation-webui" {
  description     = "UI for Large Language Models"
  repository_name = "text-generation-webui"
}
