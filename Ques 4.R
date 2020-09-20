# 4. For any 5 urban centres of your choice, 
#   a. create appropriate graphs that clearly show the levels of dependence on different sources of water. 
#   b. Compare this against Ahmedabad Corporation

# Importing Data
Water_Data = read.csv("water_data.csv")

# Segrigating Data
Treated = Water_Data$Tapwater.from.treated.source[4:9]
Untreated = Water_Data$Tapwater.from.un.treated.source[4:9]
CWell = Water_Data$Covered.well[4:9]
UnC_Well = Water_Data$Un.covered.well[4:9]
Handpump = Water_Data$Handpump[4:9]
Tubewell = Water_Data$Tubewell.Borehole[4:9]
Spring = Water_Data$Spring[4:9]
River = Water_Data$River..Canal[4:9]
Tank = Water_Data$Tank..Pond..Lake[4:9]
Oth = Water_Data$Others[4:9]

# Combining Data
x = cbind(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth)

# Plotting
barplot(x,beside = TRUE,
        ylim = c(0,70),
        col = c("black", "red", "yellow", "green", "blue", "orange"),
        xlab = "Different Sources of Water",
        ylab = "Five Urban Center Data")
legend(x = "topright",
       legend = c("Ahmedabad(M Corp.)", "Bareja (M)", "Bopal (CT)", "Singarba (CT)", "Nandej (CT)", 
                  "Dholka (M + OG)"),
       cex = 0.8,
       fill = c("black", "red", "yellow", "green", "blue", "orange"))
