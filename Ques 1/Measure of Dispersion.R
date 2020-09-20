# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   d. Calculate the measures of dispersion for these two sources

# Importing Data
Water_Data = read.csv("water_data.csv")

# Select Treated and Untreated from Ahmedabad District.
Tap_Treated = Water_Data$Tapwater.from.treated.source[1:13]
Tap_Untreated = Water_Data$Tapwater.from.un.treated.source[1:13]


# Standard Deviaition
sd(Tap_Treated)
sd(Tap_Untreated)
