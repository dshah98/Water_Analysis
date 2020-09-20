# 8. How similar or different is Surat from Ahmedabad? 
# (You will have to perform all the analysis done above for Surat, and then make the comparison)

# Importing Data
Water_Data = read.csv("water_data.csv")

# Selecting Treated Source from Surat district.
Tap_Treated = Water_Data$Tapwater.from.treated.source[14:35]

# Histogram
hist(Tap_Treated, xlab = "Surat Sub District",
     ylab = "Frequency", 
     main = "Histogram for Tapwater from Treated Source")


# Frequency Distribution
summary(Tap_Treated)
(99.9 - 1)/4
breaks = seq(1, 125, by=25)
time.cut = cut(Tap_Treated, breaks, right = FALSE)
time.freq = table(time.cut)
time.freq


# Plotting Frequency Distribution
plot(time.freq, type = "o",
     main = "Frequency Distribution of Tapwater from Treated Source",
     xlab = "Class", 
     ylab = "Frequency",
     col = "green")

# ---------------------------------------------------------------------------------------------------- #

# Select Untreated Source from Surat District.
Tap_Untreated = Water_Data$Tapwater.from.un.treated.source[14:35]

# Histogram
hist(Tap_Untreated, xlab = "Surat Sub District",
     ylab = "Frequency", 
     main = "Histogram for Tapwater from Un-Treated Source")


# Frequency Distribution
summary(Tap_Untreated)
# (max - 1) / number of class
(87.7 - 1)/4
breaks = seq(1, 95, by=22)
time.cut = cut(Tap_Untreated, breaks, right = FALSE)
time.freq = table(time.cut)
time.freq

# Ploting Frequency Distribution
plot(time.freq, type = "o",
     main = "Frequency Distribution of Un-Tapwater from Treated Source",
     xlab = "Class", 
     ylab = "Frequency",
     col = "green")

# --------------------------------------------------------------------------------------------------- #

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

# --------------------------------------------------------------------------------------------------- #

# Standard Deviaition
sd(Tap_Treated)
sd(Tap_Untreated)

# --------------------------------------------------------------------------------------------------- #

# Selecting Tubewell from Surat District
Tubwell = Water_Data$Tubewell.Borehole[14:35]

# Plotting
barplot(Tubwell,
        names.arg = Water_Data$Sub.District.Name[14:35],
        cex.names = 0.6,
        main = "Status of Groundwater (TubeWell) Dependence",
        xlab = "Urban Centers of Ahmedabad District",
        ylab = "Tubewell/Borehole Data",
        col = "green")

# --------------------------------------------------------------------------------------------------- #

# Segrigating Data
Treated = Water_Data$Tapwater.from.treated.source[20:25]
Untreated = Water_Data$Tapwater.from.un.treated.source[20:25]
CWell = Water_Data$Covered.well[20:25]
UnC_Well = Water_Data$Un.covered.well[20:25]
Handpump = Water_Data$Handpump[20:25]
Tubewell = Water_Data$Tubewell.Borehole[20:25]
Spring = Water_Data$Spring[20:25]
River = Water_Data$River..Canal[20:25]
Tank = Water_Data$Tank..Pond..Lake[20:25]
Oth = Water_Data$Others[20:25]

# Combining Data
x = cbind(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth)

# Plotting
barplot(x,beside = TRUE,
        ylim = c(0,100),
        col = c("black", "red", "yellow", "green", "blue", "orange"),
        main = "Barplot",
        xlab = "Different Sources of Water",
        ylab = "Five Urban Center Data")
legend(x = "topright",
       legend = c("Surat(M Corp.)", "Hajira (INA)", "Magdalla (INA)", "Sachin (INA)", "Kansad (M)", 
                  "Bharthana Kosad (CT)"),
       cex = 0.8,
       fill = c("black", "red", "yellow", "green", "blue", "orange"))

# --------------------------------------------------------------------------------------------------- #

# Sorted by Population
Sorted = Water_Data[with(Water_Data, order(-Total.Population.of.Town)),]

# Segregating Data
Treated = Sorted$Tapwater.from.treated.source[1:20]
Untreated = Sorted$Tapwater.from.un.treated.source[1:20]
CWell = Sorted$Covered.well[1:20]
UnWell = Sorted$Un.covered.well[1:20]
Handpump = Sorted$Handpump[1:20]
Tubewell = Sorted$Tubewell.Borehole[1:20]
Spring = Sorted$Spring[1:20]
River = Sorted$River..Canal[1:20]
Tank = Sorted$Tank..Pond..Lake[1:20]
Oth = Sorted$Other.sources[1:20]

# Combining Data
z = cbind(Treated, Untreated, CWell, UnWell, Handpump, Tubewell, Spring, River, Tank, Oth)

# Plotting
barplot(z,
        beside=T, 
        ylim = c(0,100), 
        xlab = "Different Sources",
        ylab = "Dependence",
        main= "Dependence on Different Sources",
        col = c("#FF0000", "#F08080", "#D2691E","#FFD700", "#BDB76B", "#FFFF00", "#4B0082",  '#00FFFF', 
                "#006400","#7CFC00", '#7FFFD4', "#8A2BE2", "#8B008B", "#F5DEB3", "#8B4513", "#BC8F8F",
                "#708090", "#000000", "#A9A9A9",  "#FF1493"))
legend(x = "topright",
       legend = c("Ahmadabad (M Corp.)", "Surat (M Corp.)", "Sanand (M + OG)", "Dholka (M + OG)", 
                  "Bardoli (M)", "Viramgam (M)", "Bavla (M + OG)", "Bopal (CT)", "Dhandhuka (M)",
                  "Tarsadi (M)", "Kansad (M)", "Sachin (CT)", "Kadodara (CT)","Chalthan (CT)", 
                  "Bareja (M)", "Kim (CT)", "Mandvi (M)", "Barwala (M)", "Ranpur (CT)","Kosamba (CT)"),
       cex = 0.6,
       ncol = 2,
       fill = c("#FF0000", "#F08080", "#D2691E","#FFD700", "#BDB76B", "#FFFF00", "#4B0082",  '#00FFFF', 
                "#006400","#7CFC00", '#7FFFD4', "#8A2BE2", "#8B008B", "#F5DEB3", "#8B4513", "#BC8F8F",
                "#708090", "#000000", "#A9A9A9",  "#FF1493"))

# --------------------------------------------------------------------------------------------------- #

# Selecting Data
Treated = sum(Water_Data$Tapwater.from.treated.source[14:35])
Untreated = sum(Water_Data$Tapwater.from.un.treated.source[14:35])
CWell = sum(Water_Data$Covered.well[14:35])
UnC_Well = sum(Water_Data$Un.covered.well[14:35])
Handpump = sum(Water_Data$Handpump[14:35])
Tubewell = sum(Water_Data$Tubewell.Borehole[14:35])
Spring = sum(Water_Data$Spring[14:35])
River = sum(Water_Data$River..Canal[14:35])
Tank = sum(Water_Data$Tank..Pond..Lake[14:35])
Oth = sum(Water_Data$Others[14:35])

z = c(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth)

# Plotting
pie(z, labels = paste(round(z/sum(z)*100), "%"), main = "Sources of water for Surat Urban")