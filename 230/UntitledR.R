# 1. INITIAL SETUP
set.seed(42)
n_points <- 1000

# Generate the initial starting positions
x <- runif(n_points, 4, 7)
y <- runif(n_points, 4, 7)

x2 <- runif(n_points, 4, 7)
y2 <- runif(n_points, 4, 7)

# 2. INFINITE ANIMATION LOOP (Safe for all platforms)
frame <- 1
while (TRUE) {
  
  # Generate a small random bump for each point (-0.15 to +0.15)
  x_bump <- runif(n_points, -0.15, 0.15)
  y_bump <- runif(n_points, -0.15, 0.15)
  
  # Update the positions
  x <- x + x_bump
  y <- y + y_bump
  
  x2 <- x + x_bump
  y2 <- y + y_bump
  
  # Keep the points from drifting completely off the screen
  x <- pmax(0.5, pmin(10.5, x))
  y <- pmax(0.5, pmin(10.5, y))
  
  x2 <- pmax(0.5, pmin(10.5, x))
  y2 <- pmax(0.5, pmin(10.5, y))
  
  # Draw the updated scatterplot directly to your existing plot pane
  plot(x, y,
       xlim = c(0, 11), ylim = c(0, 11), 
       col = "purple", pch = 16, cex = 1.5,
       xlab = "X Axis", ylab = "Y Axis",
       main = paste("Continuous Random Walk | Frame:", frame))
  
  plot(x2, y2,
       xlim = c(0, 11), ylim = c(0, 11), 
       col = "red", pch = 16, cex = 1.5,
       xlab = "X Axis", ylab = "Y Axis",
       main = paste("Continuous Random Walk | Frame:", frame))
  
  # Add a background grid
  grid(col = "lightgray", lty = "dotted")
  
  # Force R to refresh the console/graphics output immediately
  flush.console()
  
  # Pause for a fraction of a second before the next frame
  Sys.sleep(0.1)
  
  # Increment frame counter
  frame <- frame + 1
}
