# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   a. Create a frequency distribution and histogram for Tapwater from treated source


# Importing Data
Water_Data = read.csv("water_data.csv")

# Selecting Treated Source from Ahmedabad district.
Tap_Treated = Water_Data$Tapwater.from.treated.source[1:13]

# Histogram
hist(Tap_Treated, xlab = "Ahmedabad Sub District",
     freq = TRUE,
     ylab = "Frequency", 
     main = "Histogram for Tapwater from Treated Source")


# Frequency Distribution
summary(Tap_Treated)
(97.5 - 1)/4
breaks = seq(1, 125, by=24)
time.cut = cut(Tap_Treated, breaks, right = FALSE)
time.freq = table(time.cut)
time.freq
 

# Plotting Frequency Distribution
plot(time.freq, type = "o",
     main = "Frequency Distribution of Tapwater from Treated Source",
     xlab = "Class", 
     ylab = "Frequency",
     col = "green")
