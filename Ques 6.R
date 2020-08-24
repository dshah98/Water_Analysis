# 6. Taken as a whole, what percentage can be assigned for each of the sources of water for Ahmedabad Urban.

a = sum(main$Tapwater.from.treated.source[1:13])
b = sum(main$Tapwater.from.un.treated.source[1:13])
c = sum(main$Covered.well[1:13])
d = sum(main$Un.covered.well[1:13])
e = sum(main$Handpump[1:13])
f = sum(main$Tubewell.Borehole[1:13])
g = sum(main$Spring[1:13])
h = sum(main$River..Canal[1:13])
i = sum(main$Tank..Pond..Lake[1:13])
j = sum(main$Others[1:13])

z = c(a,b,c,d,e,f,g,h,i,j)

pie(z, labels = paste(round(z/sum(z)*100), "%"))