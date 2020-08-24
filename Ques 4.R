# 4. For any 5 urban centres of your choice, 
#   a. create appropriate graphs that clearly show the levels of dependence on different sources of water. 
#   b. Compare this against Ahmedabad Corporation

Treated = main$Tapwater.from.treated.source[4:9]
Untreated = main$Tapwater.from.un.treated.source[4:9]
CWell = main$Covered.well[4:9]
UnC_Well = main$Un.covered.well[4:9]
Handpump = main$Handpump[4:9]
Tubewell = main$Tubewell.Borehole[4:9]
Spring = main$Spring[4:9]
River = main$River..Canal[4:9]
Tank = main$Tank..Pond..Lake[4:9]
Oth = main$Others[4:9]

x = cbind(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth)

barplot(x,beside = TRUE,
        ylim = c(0,70),
        col = c("black", "red", "yellow", "green", "blue", "orange"),
        xlab = "Different Sources of Water",
        ylab = "Five Urban Center Data",
        legend.text= c("Ahmadabad (M Corp.)", "Bareja (M)", "Bopal (CT)", "Singarva (CT)", 
                       "Nandej (CT)", "Dholka (M + OG)"),  legend = rownames(x))
