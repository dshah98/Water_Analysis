# 6. Taken as a whole, what percentage can be assigned for each of the sources of water for Ahmedabad Urban.

# Importing Data
Water_Data = read.csv("water_data.csv")

# Selecting Data
Treated = sum(Water_Data$Tapwater.from.treated.source[1:13])
Untreated = sum(Water_Data$Tapwater.from.un.treated.source[1:13])
CWell = sum(Water_Data$Covered.well[1:13])
UnC_Well = sum(Water_Data$Un.covered.well[1:13])
Handpump = sum(Water_Data$Handpump[1:13])
Tubewell = sum(Water_Data$Tubewell.Borehole[1:13])
Spring = sum(Water_Data$Spring[1:13])
River = sum(Water_Data$River..Canal[1:13])
Tank = sum(Water_Data$Tank..Pond..Lake[1:13])
Oth = sum(Water_Data$Others[1:13])

z = c(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth)

# Plotting
pie(z, labels = paste(round(z/sum(z)*100), "%"))
