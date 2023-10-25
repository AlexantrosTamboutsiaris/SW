# Create a bar plot counting the number of each species type
starwars %>%
  count(species) %>%
  ggplot(aes(y = species, x = n)) +
  geom_col()

# A scatter plot of height against mass with points coloured by species
starwars %>%
  ggplot(aes(x = height, y = mass, col = species)) +
  geom_point()
starwars %>% slice_max(mass)

starwars %>% ggplot(aes(x = mass, fill = gender)) +
  geom_density() +
  scale_x_log10()

# A bar plot which shows the number of different species from each home world
starwars %>%
  ggplot(aes(y = homeworld, fill = species)) +
  geom_bar()

