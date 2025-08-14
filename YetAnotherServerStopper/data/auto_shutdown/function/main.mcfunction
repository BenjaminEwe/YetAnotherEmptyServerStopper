# Check if any players are online on every run
scoreboard players set playerCount YetAnotherEmptyServerStopper 0
execute as @a run scoreboard players set playerCount YetAnotherEmptyServerStopper 1


# If shutdown_progress == 3 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 3 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 3 seconds
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 3 if score playerCount YetAnotherEmptyServerStopper matches 0 run schedule function auto_shutdown:stop 3s

# If shutdown_progress == 2 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 2 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 5 minutes... 1 more check will be done
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 2 if score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 3

# If shutdown_progress == 1 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 1 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 10 minutes... 2 more checks will be done
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 1 if score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 2

# If shutdown_progress == 0 and playercount == 0
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 0 if score playerCount YetAnotherEmptyServerStopper matches 0 run say Server shutting down in 15 minutes... 3 more checks will be done
execute if score shutdown_progress YetAnotherEmptyServerStopper matches 0 if score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 1


# If playercount is not 0
execute unless score playerCount YetAnotherEmptyServerStopper matches 0 run scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 0


# Schedule to run this command again every time it has been parsed. The amount of time delay is the time between each check
schedule function auto_shutdown:main 300s