# From preveious video
barnacle_density_m2 <- c(2.1, 1.9, 3.0, 4.2)
site <- c("Point Arena", "Point Conception", "San Clemente", "Catalina")
region <- c("NorCal", "CenCal", "SoCal", "SoCal")

# Element-wise work on vectors
site_area_m2 <- c(25, 12, 8, 9)
barnacle_count <- barnacle_density_m2 * site_area_m2
barnacle_count

paste(region, site)

# Use conds of one vec to index another
# Give me barnacle density of site Point Arena
barnacle_density_m2[site == "Point Arena"]

# Other cond operators: !=, <, >, <=, >=
site[region != "NorCal"]

# Sites where barnacle density is greater than average
site[barnacle_density_m2 > mean(barnacle_density_m2)]

# Use sum to see how many true's
sum(region == "SoCal")
sum(barnacle_density_m2 > 4)
