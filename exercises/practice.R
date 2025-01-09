# Convert feet to meters
20 / 3.281

# Make variables with "<-"
depth_ft <- 20
depth_m <- depth_ft / 3.281

# Environment is now populated! Variables store information.

# Second purpose of variables is to make code easier to read and understand.
# This is called "encapsulation".
ft_to_m <- 1 / 3.281
depth_m <- depth_ft * ft_to_m

# Note: variables wont change unless you explicitly reassign them.
depth_m <- depth_m * 2
