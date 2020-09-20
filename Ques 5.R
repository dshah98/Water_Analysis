# 5. Prepare appropriate graphs to show and compare the dependence on different sources of water for the top 20 
#     (by population) urban centres.

# Importing Data
Water_Data = read.csv("water_data.csv")

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
