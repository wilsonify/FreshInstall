# useful R Packages
# If you are not using RStudio and/or you prefer to render from the R console,
# you can do so using the quarto R package. 
# To install the R package:
install.packages("quarto")

# Then, to render a document:
#library(quarto)
#quarto_render("document.qmd")

#To render a website (ie; all qmd in a directory organized as a website):
#library(quarto)
#quarto_render()
# To live preview (automatically render & refresh the browser on save) for a document you are working on, use the quarto_preview() function:

#library(quarto)
#quarto_preview("document.qmd")

#If you are working on a website or book project, you can also use quarto_preview() on a project directory:

#library(quarto)
#quarto_preview()