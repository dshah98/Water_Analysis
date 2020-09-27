# 4. For any 5 urban centres of your choice, 
#   a. create appropriate graphs that clearly show the levels of dependence on different sources of water. 
#   b. Compare this against Ahmedabad Corporation

# Importing Data
Water_Data = read.csv("water_data.csv")

# Segrigating Data
Ahm_Cor = as.factor(subset(Water_Data, Water_Data$Town.Name == "Ahmadabad (M Corp.)", select = c(6:15)))
Bareja = as.factor(subset(Water_Data, Water_Data$Town.Name == "Bareja (M)", select = c(6:15)))
Bopal = as.factor(subset(Water_Data, Water_Data$Town.Name == "Bopal (CT)", select = c(6:15)))
Singarva = as.factor(subset(Water_Data, Water_Data$Town.Name == "Singarva (CT)", select = c(6:15)))
Nandej = as.factor(subset(Water_Data, Water_Data$Town.Name == "Nandej (CT)", select = c(6:15)))
Dholka = as.factor(subset(Water_Data, Water_Data$Town.Name == "Dholka (M + OG)", select = c(6:15)))

# Combining Data
x = rbind(Ahm_Cor, Bareja, Bopal, Singarva, Nandej, Dholka)

# Plotting
barplot(t(x),
        main = "Comparing Ahmedabad Corr. with Water Sources",
        col = c("#003d3d", "#004d4d", "#005757", "#006666", "#007070", "#009999", "#00b3b3", "#00cccc", 
                "#00e6e6", "#00ffff"))
legend(x = "top",
       legend = c("Treated", "Untreated", "CWell", "UnC_Well", "Handpump", "Tubewell", "Spring", "River",
                  "Tank", "Oth"),
       cex = 0.7,
       ncol = 3,
       fill = c("#003d3d", "#004d4d", "#005757", "#006666", "#007070", "#009999", "#00b3b3", "#00cccc", 
                "#00e6e6", "#00ffff"))

