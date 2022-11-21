# Script name
# Author
# Date


# Libraries ---------------------------------------------------------------

library(tidyverse)
library(ggpubr)
library(palmerpenguins)


# Data --------------------------------------------------------------------

# Load the dataset into the local environment
penguins <- penguins


# Example -----------------------------------------------------------------

# Basic faceted plot
lm_1 <- ggplot(data = penguins,
       aes(x = body_mass_g, y = bill_length_mm, colour = species)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~species)
lm_1

# Basic combined plot
ggarrange(lm_1, lm_1)


# Exercise 1 --------------------------------------------------------------

# Create a new plot type and facet by gender
nlm_2 <- ggplot(data = penguins,
               aes(x = body_mass_g, y = bill_length_mm, colour = species)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~sex)
nlm_2

# Exercise 2 --------------------------------------------------------------

# Create a new plot type and facet by two categories

plot3 <- ggplot(data = penguins, 
                            # NB: There is no y-axis value for histograms
                            aes(x = body_mass_g)) + 
  geom_histogram(aes(fill = species), position = "stack", binwidth = 250) +
  # NB: We use 'fill' here rather than 'colour'
  labs(x = "Body mass (g)", fill = "Species")
plot3


# fourth plot

box_1 <- ggplot(data = penguins, 
                # Why 'as.factor()'?
                aes(x = as.factor(year),
                    y = body_mass_g)) + 
  geom_boxplot(aes(fill = species)) +
  labs(x = "Year", y = "Body mass (g)", fill = "Species") 
box_1



# Exercise 3 --------------------------------------------------------------

# Combine all of the plots you've created so far
# Save them as a high-res file larger than 2 MB

# List the names of the plot objects to combine 
grid_1 <- ggarrange(box_1, lm_1, nlm_2, plot3,
                    # Set number of rows and columns
                    ncol = 2, nrow = 2,
                    # Label each figure
                    labels = c("a)", "b)", "c)", "d)"),
                    # Create common legend
                    common.legend = TRUE,
                    # Set legend position
                    legend = "bottom")
grid_1


ggsave(plot = grid_1, filename = "figures/grid_1.jpg")


# BONUS -------------------------------------------------------------------

# Use a different package to combine plots

