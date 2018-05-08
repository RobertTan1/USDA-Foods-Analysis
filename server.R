library(readr)
library(readxl)
library(dplyr)
library(plotly)
library(shiny)
library(shinydashboard)
library(shinythemes)
library(DT)
library(data.table)

# Import dataset
foods <- read_excel("~/Desktop/sr28abxl/ABBREV.xlsx")

# Clean it

foods <-
  foods %>% select(2:length(foods))

names(foods)

foods <- foods %>%
  rename(
    "Description" = "Shrt_Desc",
    "Water (g/100 g)" = "Water_(g)",
    "Calories (kcal/100 g)" = "Energ_Kcal",
    "Protein (g/100 g)" = "Protein_(g)",
    "Total lipid (fat) (g/100 g)" = "Lipid_Tot_(g)",
    "Ash (g/100 g)" = "Ash_(g)",
    "Carbohydrate, by difference (g/100 g)" = "Carbohydrt_(g)",
    "Total dietary fiber (g/100 g)" = "Fiber_TD_(g)",
    "Total sugars (g/100 g)" = "Sugar_Tot_(g)",
    "Calcium (mg/100 g)" = "Calcium_(mg)",
    "Iron (mg/100 g)" = "Iron_(mg)",
    "Magnesium (mg/100 g)" = "Magnesium_(mg)",
    "Phosphorus (mg/100 g)" = "Phosphorus_(mg)",
    "Potassium (mg/100 g)" = "Potassium_(mg)",
    "Sodium (mg/100 g)" = "Sodium_(mg)",
    "Zinc (mg/100 g)" = "Zinc_(mg)",
    "Copper (mg/100 g)" = "Copper_mg)",
    "Manganese (mg/100 g)" = "Manganese_(mg)",
    "Selenium (μg/100 g)" = "Selenium_(µg)",
    "Vitamin C (mg/100 g)" = "Vit_C_(mg)",
    "Thiamin (mg/100 g)" = "Thiamin_(mg)",
    "Riboflavin (mg/100 g)" = "Riboflavin_(mg)",
    "Niacin (mg/100 g)" = "Niacin_(mg)",
    "Pantothenic acid (mg/100 g)" = "Panto_Acid_mg)",
    "Vitamin B6 (mg/100 g)" = "Vit_B6_(mg)",
    "Folate, total (μg/100 g)" = "Folate_Tot_(µg)",
    "Folic acid (μg/100 g) " = "Folic_Acid_(µg)",
    "Food folate (μg/100 g)" = "Food_Folate_(µg)",
    "Folate (μg dietary folate equivalents/100 g)" = "Folate_DFE_(µg)",
    "Choline, total (mg/100 g)" = "Choline_Tot_ (mg)",
    "Vitamin B12 (μg/100 g)" = "Vit_B12_(µg)",
    "Vitamin A (IU/100 g)" = "Vit_A_IU",
    "Vitamin A (μg retinol activity equivalents/100g) " = "Vit_A_IU",
    "Retinol (μg/100 g)" = "Retinol_(µg)",
    "Alpha-carotene (μg/100 g)" = "Alpha_Carot_(µg)",
    "Beta-carotene (μg/100 g)" = "Beta_Carot_(µg)",
    "Beta-cryptoxanthin (μg/100 g)" = "Beta_Crypt_(µg)",
    "Lycopene (μg/100 g)" = "Lycopene_(µg)",
    "Lutein+zeazanthin (μg/100 g)" = "Lut+Zea_ (µg)",
    "Vitamin E (alpha-tocopherol) (mg/100 g)" = "Vit_E_(mg)",
    "Vitamin D (μg/100 g)" = "Vit_D_µg",
    "Vitamin D (IU/100 g)" = "Vit_D_IU",
    "Vitamin K (phylloquinone) (μg/100 g)" = "Vit_K_(µg)",
    "Saturated fatty acid (g/100 g)" = "FA_Sat_(g)",
    "Monounsaturated fatty acids (g/100 g)" = "FA_Mono_(g)",
    "Polyunsaturated fatty acids (g/100 g)" = "FA_Poly_(g)",
    "Cholesterol (mg/100 g)" = "Cholestrl_(mg)",
    "Practical weight measure 1" = "GmWt_1",
    "Description of practical weight measure 1" = "GmWt_Desc1",
    "Practical weight measure 2" = "GmWt_2",
    "Description of practical weight measure 2" = "GmWt_Desc2",
    "Percent of food that's waste, shells, peelings" = "Refuse_Pct"
  )

foods.selectible <- foods %>% select(2:48, 50, 52)

server <- function(input, output) {
  
}