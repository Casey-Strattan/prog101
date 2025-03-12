# What does the following code do?
# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
instrument_deployed_h <- floor(instrument_deployed_hm) / 100
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
instrument_deployed_h <- floor(instrument_deployed_h) + instrument_deployed_hdec
#The first expression puts the times into hr.min format
#The second expression extracts the min from the time and finds its decimal equivalent (within the hour)
#The third expression adds the hr and the decimal min

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered_hm <- c(1600, 1920, 2015)
instrument_recovered_h <- floor(instrument_recovered_hm) / 100
instrument_recovered_mdec <- (instrument_recovered_hm %% 100) / 60
instrument_recovered_h <- floor(instrument_recovered_h) + instrument_recovered_mdec

deployment_duration_h <- instrument_recovered_h - instrument_deployed_h

# Units of hours in decimal format


# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")
site_longest_dur <- site[which.max(deployment_duration_h)]
