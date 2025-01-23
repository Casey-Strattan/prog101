##########################################################################
## Driver: (Casey Strattan) (Casey-Strattan)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (2025-01-09)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?

# How was temperature monitored?

# What's the difference between absolute temperature and temperature anomaly?

# Absolute temp is just the temp at any given time without noting or removing
# any anomalous temps.

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?

# six

# How long are they?

# 1295038

# What do they represent?

# Different information about the data, site, temperature, tide level, etc

# Link to sketch

Aialik_datetime <- kefj_datetime[kefj_site == "Aialik"]
common_interval <- Aialik_datetime[-1] - Aialik_datetime[-length(Aialik_datetime)]
table(common_interval)


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-04 00:00:00", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day

coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-28 00:00:00", tz = "Etc/GMT+8")
coldday_idx <- kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temp <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temp, coldday_exposure)


# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?

# How did Traiger et al. define extreme temperature exposure?

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.
extremehot_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end &
  kefj_temperature >= 25
extremehot_datetimes <- kefj_datetime[extremehot_idx]
print(extremehot_datetimes[7]-extremehot_datetimes[1])

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
