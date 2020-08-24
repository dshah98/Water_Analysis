# 5. Prepare appropriate graphs to show and compare the dependence on different sources of water for the top 20 
#     (by population) urban centres.

Treated = main1$Tapwater.from.treated.source[1:20]
Untreated = main1$Tapwater.from.un.treated.source[1:20]
CWell = main1$Covered.well[1:20]
UnWell = main1$Un.covered.well[1:20]
Handpump = main1$Handpump[1:20]
Tubewell = main1$Tubewell.Borehole[1:20]
Spring = main1$Spring[1:20]
River = main1$River..Canal[1:20]
Tank = main1$Tank..Pond..Lake[1:20]
Oth = main1$Other.sources[1:20]

z = cbind(Treated, Untreated, CWell, UnWell, Handpump, Tubewell, Spring, River, Tank, Oth)
  
barplot(z,
        beside=T, 
        ylim = c(0,100), 
        xlab = "Diffent Sources",
        ylab = "Dependence",
        main= "Dependence on Different Sources",
        col = c("#FF0000", "#FF8000", "#FFFF00", "#80FF00", "#00FF00", "#00FF80", "#00FFFF", "#0080FF", 
                '#0000FF', '#7F00FF'),
        legend = c("Ahmadabad (M Corp.)", "Surat (M Corp.)", "Sanand (M + OG)", "Dholka (M + OG)", 
                       "Bardoli (M)", "Viramgam (M)", "Bavla (M + OG)", "Bopal (CT)", "Dhandhuka (M)",
                       "Tarsadi (M)", "Kansad (M)", "Sachin (CT)", "Kadodara (CT)","Chalthan (CT)", 
                       "Bareja (M)", "Kim (CT)", "Mandvi (M)", "Barwala (M)", "Ranpur (CT)","Kosamba (CT)"))

# Ahm = subset(data, data$District.Name == "AHMADABAD")
# Urban = subset(Ahm, Town.Name=="Ahmadabad (M Corp.)" | Town.Name=="Sanand (M + OG)" | Town.Name=="Dholka (M + OG)" | 
#                  Town.Name=="Viramgam (M)" | Town.Name=="Bavla (M + OG)" | Town.Name=="Bopal (CT)" | 
#                  Town.Name=="Dhandhuka (M)" | Town.Name=="Bareja (M)" | Town.Name=="Barwala (M)" | Town.Name=="Ranpur (CT)")
# 
# Source = cbind (Urban$Tapwater.from.treated.source, Urban$Tapwater.from.un.treated.source, Urban$Covered.well, 
#                 Urban$Un.covered.well, Urban$Handpump, Urban$Tubewell.Borehole, Urban$Spring, 
#                 Urban$River..Canal, Urban$Tank..Pond..Lake, Urban$Other.sources)
# 
# barplot(Source, names.arg = c("Tap.treated", "Tap.untreated", "Covered Well", "Uncovered Well", "Handpump", "Tubewell", 
#                               "Spring", "River/Canal", "Tank/Pond/Lake", "Others"), 
#         beside=T, ylim=c(0,100), main= "Dependence on Different Sources", 
#         col = c("black", "red", "yellow", "green", "blue", "orange", "brown", "white", 'grey', 'purple'), 
#         legend.text= c("Ahmadabad (M Corp.)", "Sanand (M + OG))", "Dholka (M + OG)", "Viramgam (M)", 
#                        "Bavla (M + OG)", "Bopal (CT)", "Dhandhuka (M)","Bareja (M)", "Barwala (M)", "Ranpur (CT)"), 
#         xlab= "Different Sources", ylab="Dependence")