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
     main = "Frequency Distribution of Tapwater from Un-Treated Source",
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
Surat_Cor = as.factor(subset(Water_Data, Water_Data$Town.Name == "Surat (M Corp.)", select = c(6:15)))
Hajira = as.factor(subset(Water_Data, Water_Data$Town.Name == "Hajira (INA)", select = c(6:15)))
Magdalla = as.factor(subset(Water_Data, Water_Data$Town.Name == "Magdalla (INA)", select = c(6:15)))
Sachin = as.factor(subset(Water_Data, Water_Data$Town.Name == "Sachin (INA)", select = c(6:15)))
Kansad = as.factor(subset(Water_Data, Water_Data$Town.Name == "Kansad (M)", select = c(6:15)))
Ichchhapor = as.factor(subset(Water_Data, Water_Data$Town.Name == "Ichchhapor (CT)", select = c(6:15)))

# Combining Data
x = rbind(Surat_Cor, Hajira, Magdalla, Sachin, Kansad, Ichchhapor)

# Plotting
barplot(t(x),
        main = "Comparing Surat Corr. with Water Sources",
        col = c("#003d3d", "#004d4d", "#005757", "#006666", "#007070", "#009999", "#00b3b3", "#00cccc", 
                "#00e6e6", "#00ffff"))
legend(x = "topright",
       legend = c("Treated", "Untreated", "Covered Well", "UnCovered Well", "Handpump", "Tubewell", "Spring", "River",
                  "Tank", "Oth"),
       y.intersp = 0.8,
       cex = 0.5,
       ncol = 1,
       fill = c("#003d3d", "#004d4d", "#005757", "#006666", "#007070", "#009999", "#00b3b3", "#00cccc", 
                "#00e6e6", "#00ffff"))

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