# 3. What is the status of groundwater (Tubewell) dependence in urban centres of Ahmedabad district?

b = main$Tubewell.Borehole[1:13]
barplot(b,
        names.arg = main$Sub.District.Name[1:13],
        main = "Status of Groundwater (TubeWell) Dependence",
        xlab = "Urban Centers of Ahmedabad District",
        ylab = "Tubewell/Borehole Data",
        col = "green")
