# Create vectors with the c() (short for combine)
barnacle_density_m2 <- c(2.1, 1.9, 3.0, 4.2)
site <- c("Point Arena", "Point Conception", "San Clemente", "Catalina")
region <- c("NorCal", "CenCal", "SoCal", "SoCal")

# Square brackets to index
barnacle_density_m2[1]
barnacle_density_m2[4]

# Pull slices out using :
barnacle_density_m2[1:2]
str(barnacle_density_m2[1:2])
site[3:4]

# Pull out non-contiguous indecies with c()
barnacle_density_m2[c(1,3)]

# Output vec sizes

# n -> n (element-wise transformation)
sqrt(barnacle_density_m2)

# n -> 1 (summaries or aggregation)
length(barnacle_density_m2)
max(barnacle_density_m2)
min(barnacle_density_m2)

# n -> m (other)
unique(region)
