# Pabna District, mid year 2022 (illustrative figures)
age_group <- c("0-4",   "5-9",   "10-14", "15-19", "20-24",
               "25-29", "30-34", "35-39", "40-44", "45-49",
               "50-54", "55-59", "60-64", "65-69", "70-74",
               "75-79", "80+")

male   <- c(124500, 138200, 142300, 131400, 118200,
            104500, 96300,  88700,  78400,  67100,
            56800,  47200,  38500,  28700,  19600,
            11400,  8200)

female <- c(119800, 132400, 136700, 128900, 122600,
            110800, 102400, 94200,  82500,  70200,
            58900,  48400,  39200,  29800,  21200,
            13500,  11800)

pop <- data.frame(age_group, male, female)
pop

str(pop)
head(pop)
sum(pop$female)

gap <- (pop$male - pop$female)
max(abs(gap))

pop[order(-abs(pop$male-pop$female)), ]
df[order(df$column_name), ]