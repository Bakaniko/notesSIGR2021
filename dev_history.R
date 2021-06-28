usethis::use_build_ignore("dev_history.R")
# Licence ---
usethis::use_gpl3_license()

# description ----
library(desc)
unlink("DESCRIPTION")
my_desc <- description$new("!new")
my_desc$set_version("0.0.0.9000")
my_desc$set(Package = "notesSIGR2021")
my_desc$set(Title = "Notes from SIGR 2021 thematic school")
my_desc$set(Description = "Contains a collection of notes files")
my_desc$set("Authors@R",
            'c(
  person("Nicolas", "Roelandt", email = "nicolas.roelandt@univ-eiffel.fr", role = c("aut", "cre"), comment = c(ORCID = "0000-0001-9698-4275")),
  person(given = "gflowiz", role = "cph")
)')
my_desc$set("VignetteBuilder", "knitr")
my_desc$del("Maintainer")
my_desc$del("URL")
my_desc$del("BugReports")
my_desc$write(file = "DESCRIPTION")

# Documentation ----
usethis::use_data_raw()
# _Readme
usethis::use_readme_md()

usethis::use_git()

# Vignette
usethis::use_vignette("recherche_reproductible_Arnaud_Legrand")
devtools::build_vignettes()

# pkgdown and GH actions
usethis::use_pkgdown()
usethis::use_github_action("pkgdown")
usethis::use_build_ignore("_pkgdown.yml")

# build website locally
pkgdown::build_articles()
