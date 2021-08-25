################################################################################
# 1 setup -----
# install.packages("usethis")
R.version.string
usethis::git_sitrep()

install.packages("blogdown")
blogdown::install_hugo()
blogdown::hugo_version()



################################################################################
# 2 create your site
library(blogdown)

# create site
blogdown::new_site(theme = "hugo-apero/hugo-apero",
                   format = "toml"
                   forced = TRUE)

# preview site
blogdown::serve_site()

# update theme
blogdown::install_theme(theme = "hugo-apero/hugo-apero",
                        update_config = FALSE, 
                        force = TRUE)



################################################################################
# 3 site config
# go to config.toml

# hugo variable
```
baseURL = "/"
title = "Hugo Apéro"
author = "Alison Hill"
# set deliberately low for testing- choose your preferred number 
paginate = 5
```

# Apéro variables
```
[params]
  orgName = "RStudio"
  orgLocal = "Anywhere"
  description = "A modern, beautiful, and easily configurable blog theme for Hugo."
  favicon = "/img/favicon.ico"
  logo = "/img/blogophonic-mark-dark.png"
  mainSections = ["blog", "project", "talk"]
  navallcaps = true
  # Default image for social sharing and search engines. 
  # Place image file in `static` folder and specify image name here.
  sharing_image = "/img/papillons.jpg"
  # Twitter username (without @). Used when a visitor shares your site on Twitter.
  twitter = "apreshill"
```