Assumption_check <- function(model, caption_text) {
  par(mfrow = c(1, 2), mar = c(6, 4, 2, 1), oma = c(4, 0, 0, 0))   # Set up the plotting layout and margins
  plot(model, 1)  # Plot residuals vs fitted values
  plot(model, 2)  # Plot Q-Q plot for residuals
  mtext(caption_text, side = 1, outer = TRUE, line = 2, cex = 0.9)   # Add a caption below the plots
}