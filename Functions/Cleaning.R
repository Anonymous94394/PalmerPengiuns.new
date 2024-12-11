Cleaning <- function(raw_data){
  raw_data %>%
    clean_names()%>%
    shorten_species() %>% 
    remove_empty(c("rows", "cols"))%>%
    select(-comments)%>%
    select(-starts_with("delta"))
}

# A function to clean the collumn names 
clean_column_names <- function(penguins_data) {
  penguins_data %>%
    clean_names()
}

# A function to remove columns based on specified column names. 
remove_columns <- function(penguins_data, column_names) {
  penguins_data %>%
    select(-starts_with(column_names)) #Select column name that start with the text specified in the brackets. 
}

# A function to make sure the species names are shortened
shorten_species <- function(penguins_data) {
  penguins_data %>%
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}

# A function to remove any empty columns or rows
remove_empty_columns_rows <- function(penguins_data) {
  penguins_data %>%
    remove_empty(c("rows", "cols"))
}


# A function to remove rows which contain NA values
remove_NA <- function(penguins_data) {
  penguins_data %>%
    na.omit()
}

