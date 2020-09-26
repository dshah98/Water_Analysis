# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   b. Create a frequency distribution and histogram for Tapwater from un-treated source

# Importing Data
Water_Data = read.csv("water_data.csv")

# Select Untreated Source from Ahmedabad District.
Tap_Untreated = Water_Data$Tapwater.from.un.treated.source[1:13]

# Histogram
hist(Tap_Untreated, xlab = "Ahmedabad Sub District",
     freq = TRUE,
     ylab = "Frequency", 
     main = "Histogram for Tapwater from Un-Treated Source")


# Frequency Distribution
summary(Tap_Untreated)
# (max - 1) / number of class
(73.10 - 1)/4
breaks = seq(1, 95, by=18)
time.cut = cut(Tap_Untreated, breaks, right = FALSE)
time.freq = table(time.cut)
time.freq

# Ploting Frequency Distribution
plot(time.freq, type = "o",
     main = "Frequency Distribution of Un-Tapwater from Treated Source",
     xlab = "Class", 
     ylab = "Frequency",
     col = "green")
