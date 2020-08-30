# 5. Prepare appropriate graphs to show and compare the dependence on different sources of water for the top 20 
#     (by population) urban centres.

# Sorted by Population
sorted = water_data[with(water_data, order(-Total.Population.of.Town)),]

Treated = sorted$Tapwater.from.treated.source[1:20]
Untreated = sorted$Tapwater.from.un.treated.source[1:20]
CWell = sorted$Covered.well[1:20]
UnWell = sorted$Un.covered.well[1:20]
Handpump = sorted$Handpump[1:20]
Tubewell = sorted$Tubewell.Borehole[1:20]
Spring = sorted$Spring[1:20]
River = sorted$River..Canal[1:20]
Tank = sorted$Tank..Pond..Lake[1:20]
Oth = sorted$Other.sources[1:20]

z = cbind(Treated, Untreated, CWell, UnWell, Handpump, Tubewell, Spring, River, Tank, Oth)
  
barplot(z,
        beside=T, 
        ylim = c(0,100), 
        xlab = "Diffent Sources",
        ylab = "Dependence",
        main= "Dependence on Different Sources",
        col = c("#FF0000", "#F08080", "#D2691E","#FFD700", "#BDB76B", "#FFFF00", "#4B0082",  '#00FFFF', 
                "#006400","#7CFC00", '#7FFFD4', "#8A2BE2", "#8B008B", "#F5DEB3", "#8B4513", "#BC8F8F",
                "#708090", "#000000", "#A9A9A9",  "#FF1493"),
        # legend = c("Ahmadabad (M Corp.)", "Surat (M Corp.)", "Sanand (M + OG)", "Dholka (M + OG)", 
        #                "Bardoli (M)", "Viramgam (M)", "Bavla (M + OG)", "Bopal (CT)", "Dhandhuka (M)",
        #                "Tarsadi (M)", "Kansad (M)", "Sachin (CT)", "Kadodara (CT)","Chalthan (CT)", 
        #                "Bareja (M)", "Kim (CT)", "Mandvi (M)", "Barwala (M)", "Ranpur (CT)","Kosamba (CT)"))
        )