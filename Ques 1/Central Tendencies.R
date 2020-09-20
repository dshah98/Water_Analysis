# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   c. Calculate the central tendencies for these two sources.

# Importing Data
Water_Data = read.csv("water_data.csv")

# Select Treated and Untreated from Ahmedabad District.
Tap_Treated = Water_Data$Tapwater.from.treated.source[1:13]
Tap_Untreated = Water_Data$Tapwater.from.un.treated.source[1:13]


# Mean
mean(Tap_Treated)
mean(Tap_Untreated)


# Geometric Mean
print(prod(Tap_Treated)^(1 / length(Tap_Treated))) 
print(prod(Tap_Untreated)^(1 / length(Tap_Untreated))) 


# Harmonic Mean
print(1 / mean(1 / Tap_Treated))
print(1 / mean(1 / Tap_Untreated))


# Median
median(Tap_Treated)
median(Tap_Untreated)


# Mode
mode(Tap_Treated)
mode(Tap_Untreated)
