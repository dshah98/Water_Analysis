# 6. Taken as a whole, what percentage can be assigned for each of the sources of water for Ahmedabad Urban.

Treated = sum(water_data$Tapwater.from.treated.source[1:13])
Untreated = sum(water_data$Tapwater.from.un.treated.source[1:13])
CWell = sum(water_data$Covered.well[1:13])
UnC_Well = sum(water_data$Un.covered.well[1:13])
Handpump = sum(water_data$Handpump[1:13])
Tubewell = sum(water_data$Tubewell.Borehole[1:13])
Spring = sum(water_data$Spring[1:13])
River = sum(water_data$River..Canal[1:13])
Tank = sum(water_data$Tank..Pond..Lake[1:13])
Oth = sum(water_data$Others[1:13])

z = c(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth)

pie(z, labels = paste(round(z/sum(z)*100), "%"))
