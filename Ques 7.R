# 7. Compare the situation of Ahmedabad District with Surat District.

# Importing Data
Water_Data = read.csv("water_data.csv")

# Selecting Data of Ahmedabad
UrbanA = subset(Water_Data, Water_Data$District == "AHMADABAD")
Treated = sum(UrbanA[c(6)])
Untreated = sum(UrbanA[c(7)])
CWell = sum(UrbanA[c(8)])
UnC_Well = sum(UrbanA[c(9)])
Handpump = sum(UrbanA[c(10)])
Tubewell = sum(UrbanA[c(11)])
Spring = sum(UrbanA[c(12)])
River = sum(UrbanA[c(13)])
Tank = sum(UrbanA[c(14)])
Oth = sum(UrbanA[c(15)])
Toilet = sum(UrbanA[c(16)])
PSewer = sum(UrbanA[c(17)])
STank = sum(UrbanA[c(18)])
Other = sum(UrbanA[c(19)])
Pit_Lat = sum(UrbanA[c(20)])
Pub_Lat = sum(UrbanA[c(21)])
Open = sum(UrbanA[c(22)])
tryA= cbind(Treated, Untreated, CWell, UnC_Well, Handpump, Tubewell, Spring, River, Tank, Oth, Toilet, PSewer,
            STank, Other, Pit_Lat, Pub_Lat, Open)

# Selecting Data of Surat
UrbanS = subset(Water_Data, Water_Data$District == "SURAT")
Treated1 = sum(UrbanS[c(6)])
Untreated1 = sum(UrbanS[c(7)])
CWell1 = sum(UrbanS[c(8)])
UnC_Well1 = sum(UrbanS[c(9)])
Handpump1 = sum(UrbanS[c(10)])
Tubewell1 = sum(UrbanS[c(11)])
Spring1 = sum(UrbanS[c(12)])
River1 = sum(UrbanS[c(13)])
Tank1 = sum(UrbanS[c(14)])
Oth1 = sum(UrbanS[c(15)])
Toilet1 = sum(UrbanS[c(16)])
PSewer1 = sum(UrbanS[c(17)])
STank1 = sum(UrbanS[c(18)])
Other1 = sum(UrbanS[c(19)])
Pit_Lat1 = sum(UrbanS[c(20)])
Pub_Lat1 = sum(UrbanS[c(21)])
Open1 = sum(UrbanS[c(22)])
tryS = cbind(Treated1, Untreated1, CWell1, UnC_Well1, Handpump1, Tubewell1, Spring1, River1, Tank1, Oth1, Toilet1, 
             PSewer1, STank1, Other1, Pit_Lat1, Pub_Lat1, Open1)

# Combining Data
c = rbind(tryA,tryS)

# Plotting
barplot(c,beside=TRUE,
        col = c("black", "grey"))
legend(x = "topright",
       legend = c("Ahmedabad", "Surat"),
       cex = 0.8,
       fill = c("black", "grey"))
