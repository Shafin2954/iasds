# core tidyverse --> 9 functions

# as_tibble
library(palmerpenguins)
data("penguins")

pen <-  penguins
glimpse(pen)

filter(pen, species=="Adelie", sex=="male")
filter(pen, species=="Chinstrap", bill_length_mm > 52)
filter(pen, species %in% c("Adelie", "Chinstrap"))

pen2 <- filter(pen, species=="Gentoo" | body_mass_g > 4500)
pen2


arrange(pen, desc(bill_length_mm))


saved <- pen |> 
  filter(species == "Adelie") |> # species %in% c("", "", "")
  arrange(desc(bill_length_mm)) |> 
  mutate(bmkg = body_mass_g/1000, .before = 2) |>
  mutate(group = if_else(flipper_length_mm < 210, "Small", "Large")) |> # lambda
  mutate(group2 = case_when(
    body_mass_g > 4500 ~ "Fatty",
    body_mass_g > 3000 ~ "Normal",
    body_mass_g < 3000 ~ "Skinny"
  ), .before = 1)
saved
pen |>
  slice(1, 5) # first 1 to 5 rows, all col

slice(pen, c(3, 10)) # only 3rd and 10th row

pen |> arrange(desc(bill_length_mm)) |> slice(1, 3)
# shortcut:
pen |> slice_max(bill_length_mm, n=3, with_ties = F)

slice_sample(pen, n=10)

pen |> distinct(species, year)


pen|> select(-island) # except island

pen|> select(starts_with("bill")) # field name starting with bill

pen |> select(location = island, everything())

everything(pen)
