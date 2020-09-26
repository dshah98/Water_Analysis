# 3. What is the status of groundwater (Tubewell) dependence in urban centres of Ahmedabad district?

# Importing Data
Water_Data = read.csv("water_data.csv")

# Selecting Tubewell from Ahmedabad District
Tubwell = Water_Data$Tubewell.Borehole[1:13]

# Plotting
barplot(Tubwell,
        names.arg = Water_Data$Town.Name[1:13],
        main = "Status of Groundwater (TubeWell) Dependence",
        xlab = "Urban Centers of Ahmedabad District",
        ylab = "Tubewell/Borehole Data",
        col = "green")
