summarize_data <- function(data, group_var, Measurement, caption) {
  summary_stats <- data %>% #First generate variations 
    group_by(!!sym(group_var)) %>%  # Group by the specified variable
    summarise(
      group_mean = mean(!!sym(Measurement), na.rm = TRUE),
      group_sd = sd(!!sym(Measurement), na.rm = TRUE)
    ) #Calculate the mean and the sd 
  
  # Second format the summary statistics in a table
  knitr::kable(
    summary_stats, #Calling the statistics 
    caption = caption, #Title 
    col.names = c(group_var, "Mean", "SD"), #Collumn names 
    digits = 3  # Round to 3 decimal places
  )
}