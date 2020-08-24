# 1. Summarize the status of water access in the urban centres of Ahmedabad district.
#   c. Calculate the central tendencies for these two sources.


a = main$Tapwater.from.treated.source[1:13]
b = main$Tapwater.from.un.treated.source[1:13]


# Mean
print(mean(a))
print(mean(b))


# Geometric Mean
print(prod(a)^(1 / length(a))) 
print(prod(b)^(1 / length(b))) 


# Harmonic Mean
print(1 / mean(1 / a))
print(1 / mean(1 / b))


# Median
median(a)
median(b)


# Mode
mode(a)