# Script name
# Author
# Date


# Libraries ---------------------------------------------------------------

library(tidyverse)
library(palmerpenguins)


# Data --------------------------------------------------------------------

# Load the dataset into the local environment
penguins <- penguins


# Example -----------------------------------------------------------------

# The basic plot
ggplot(data = penguins,
       aes(x = body_mass_g, y = bill_length_mm)) +
  geom_point(aes(colour = species))


# Exercise 1 --------------------------------------------------------------

# Create a basic plot with different x and y axes
ggplot(data = penguins,
       aes(x = bill_length_mm, y = flipper_length_mm)) +
  geom_point(aes(colour = sex))

print(penguins)
# Exercise 2 --------------------------------------------------------------

# Change the aes() arguments

ggplot(data = penguins,
       aes(x = bill_length_mm, y = flipper_length_mm)) +
  geom_point(aes(colour = species, shape = sex))

# Exercise 3 --------------------------------------------------------------

# Change the labels
ggplot(data = penguins,
       aes(x = bill_length_mm, y = flipper_length_mm)) +
  geom_point(aes(colour = species, shape = sex)) +
  labs(x = "Bill length (mm)", y = "Flipper length (mm)", colour = "Species", shape = "Sex") + 
  theme(legend.position = "bottom")

#### hello ####
#### hello 2 ####

# section -----------------------------------------------------------------

# rello -------------------------------------------------------------------

####helle####

# BONUS -------------------------------------------------------------------

# Create a ridgeplot

library(ggridges)
library(ggplot2)

# Diamonds dataset is provided by R natively
#head(diamonds)

# basic example
ggplot(data = penguins, aes(x = bill_length_mm, y = sex, fill = sex)) +
  geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position = "none")


ggplot(data = penguins, aes(x = body_mass_g, y = sex, fill = sex)) +
  geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position = "none")



view(penguins)
