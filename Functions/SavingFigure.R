
save_flipper_plot_svg <- function(boxplot, filename, size, scaling) {
  size_inches = size / 2.54  #Convert size from millimeters to inches (since svg dimensions in svglite are in inches)
  svglite(filename, width = size_inches, height = size_inches, scaling = scaling) # Create an SVG device, specifying the output filename, size, and scaling for the plot
  print(boxplot)  # Print the boxplot to the SVG file
  dev.off()  # This stops writing to the current graphical device (the SVG file) and saves the output
  
}
