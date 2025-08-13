# Check if any players are online on every run
scoreboard players set playerCount YetAnotherEmptyServerStopper 0
execute as @a run scoreboard players set playerCount YetAnotherEmptyServerStopper 1



# If shutdown_progress == 3 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 3 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 3 seconds
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 3 if score playerCount YetAnotherEmptyServerStopper matches 0 run schedule function auto_shutdown:stop 3s
# If shutdown_progress == 3 and playercount > 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 3 unless score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 0



# If shutdown_progress == 2 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 2 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 5 minutes... 1 more check will be done
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 2 if score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 3
# If shutdown_progress == 2 and playercount > 0
# Note: the unless score matches 0 could propably be removed, since the command should never run anyways, but makes the logic cleaner.
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 2 unless score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 0



# If shutdown_progress == 1 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 1 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 10 minutes... 2 more checks will be done
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 1 if score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 2
# If shutdown_progress == 1 and playercount > 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 1 unless score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 0



# If shutdown_progress == 0 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 0 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 15 minutes... 3 more checks will be done
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 0 if score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 1



# Schedule to run this command again every time it has been parsed. The amount of time delay is the time between each check
schedule function auto_shutdown:main 10s


# Notes:
#
# The commands that reset the shutdown_progress to 0 include 'unless score playerCount YetAnotherEmptyServerStopper matches 0'.
# This is not technically needed, but makes the logic cleaner.
#
# In future will investigate if variables can be set to determine time to restart server, and possibly amount of warnings/checks.
# 