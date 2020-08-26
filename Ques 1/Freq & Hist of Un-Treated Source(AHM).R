# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   b. Create a frequency distribution and histogram for Tapwater from un-treated source


# Histogram
b = main$Tapwater.from.un.treated.source[1:13]
b
hist(b, xlab = "Ahmedabad Sub District",
     ylab = "Frequency", 
     main = "Histogram for Tapwater from Un-Treated Source")


#Frequency
summary(b)
# (max - 1) / number of class
(73.90 - 1)/4
breaks = seq(1, 75, by=18)
time.cut = cut(b, breaks, right = FALSE)
time.freq = table(time.cut)
time.freq

barplot(time.freq, 
        main = "Frequency Distribution of Un-Tapwater from Treated Source",
        xlab = "Class", 
        ylab = "Frequency")
