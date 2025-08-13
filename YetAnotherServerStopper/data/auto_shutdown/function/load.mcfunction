say YetAnotherEmptyServerStopper initialized...

# Using the scoreboard objective YetAnotherEmptyServerStopper to store my variables
scoreboard objectives add YetAnotherEmptyServerStopper dummy
scoreboard players set shutdown_progress YetAnotherEmptyServerStopper 0
scoreboard players set playerCount YetAnotherEmptyServerStopper 0

schedule function auto_shutdown:main 3s