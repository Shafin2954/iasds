library(palmerpenguins)
data("penguins")

pen <-  penguins
glimpse(pen)

pen |> mutate(bmkg = body_mass_g / 1000)

pen |> mutate(
  group2 = case_when(
    body_mass_g > 4500 ~ "Fatty",
    body_mass_g > 3000 & body_mass_g < 4500 ~ "Normal",
    body_mass_g < 3000 ~ "Skinny"
  )
)

pen |> filter(species == "Adelie", sex == "female") |> select(bill_length_mm) |> arrange(desc(bill_length_mm))

pen |>
  group_by(sex) |>
  summarise(
    mean_body = mean(body_mass_g, na.rm = T),
    mean_length = mean(bill_length_mm, na.rm = T)
  )

pen |> slice_max(body_mass_g, n = 1, by = island)

pen |>
  #group_by(species) |>
  slice_sample(n = 5, by = species) |> # by replaces group(), ungroup()
  #ungroup() |>
  summarise(mean = mean(body_mass_g, na.rm = T))

pen |>
  #group_by(sex) |>
  slice_sample(n = 5, by = sex) |> # by replaces group(), ungroup()
  #ungroup() |>
  summarise(mean = mean(body_mass_g, na.rm = T))

pen |> filter(species == "Adelie") |> group_by(island) |> summarise(flip_max = max(flipper_length_mm),
                                                                    flip_min = min(flipper_length_mm)) |> drop_na()

pen |>
  mutate(bill_ratio = bill_length_mm / bill_depth_mm) |>
  select(species, bill_ratio) |>
  group_by(species) |>
  summarise(bill_ratio_mean = mean(bill_ratio, na.rm = T))

pen |>
  mutate(bill_ratio = bill_length_mm / bill_depth_mm) |>
  select(species, bill_ratio) |>
  summarise(bill_ratio_mean = mean(bill_ratio, na.rm = T), 
            .by = species)

pen |> count(sex, name="freq") |> drop_na() |> mutate(prop=freq/sum(freq))

pen |> mutate(
  group2 = case_when(
    body_mass_g > 4500 ~ "Fatty",
    body_mass_g > 3000 & body_mass_g < 4500 ~ "Normal",
    body_mass_g < 3000 ~ "Skinny"
  )
)|>
  count(group2)

pen |> count(sex, species) |> pivot_wider(
    names_from = species, 
    values_from = n, 
    values_fill = 0)

#accros()


pen |> 
  filter(sex=="female", island %in% c("Dream", "Biscoe"))|>
  mutate(body_mass_kg = body_mass_g / 1000) |>
  summarise(mean_body_mass = mean(body_mass_kg, na.rm=T), .by=species) |>
  arrange(desc(mean_body_mass))
  
left_join(table1, table2)
        