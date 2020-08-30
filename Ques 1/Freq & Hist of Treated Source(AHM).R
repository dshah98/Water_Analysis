# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   a. Create a frequency distribution and histogram for Tapwater from treated source


# Histogram
b = water_data$Tapwater.from.treated.source[1:13]
hist(b, xlab = "Ahmedabad Sub District",
     ylab = "Frequency", 
     main = "Histogram for Tapwater from Treated Source")


# Frequency
summary(b)
(97.5 - 1)/4
breaks = seq(1, 125, by=24)
time.cut = cut(b, breaks, right = FALSE)
time.freq = table(time.cut)
time.freq
 

plot(time.freq, type = "o",
     main = "Frequency Distribution of Tapwater from Treated Source",
     xlab = "Class", 
     ylab = "Frequency",
     col = "green")
