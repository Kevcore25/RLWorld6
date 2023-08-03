## Every second tick for sleeping server
# Kevcore 06/11/2023

# This function runs ALL THE TIME, even when the server sleeps.
# Server sleeping: When no players are online, set the slate into a "sleep mode", which if the entity count is over 200, kill them
# It also disables all the main core function such as cmd:cmd, cmd:sec, etc


## CONFIG

# Should the server sleep if 0 players are online? (Frees resources!)
# 1 = true, 0 = false
scoreboard players set SleepServer sleepModeVar 1

# When should this function run?
# 1t = 1 tick. 5s = 5 seconds (1 tick = approx. 0.05 seconds)
# Defaults to 5s. If you use the plugin Hibernate, you might want to use 1.
# Higher amounts will consume less resources, but your players will notice waking up times slow. Plus, this function does not use a lot of resources anyway.
schedule function cmd:sleepmodefunctions/sleepsec 1s replace
## END OF CONFIG





## SLEEP CODE


# Determine amount of players
scoreboard players set PlayerCount sleepModeVar 0
scoreboard players add Sleeping sleepModeVar 0

execute as @a run scoreboard players add PlayerCount sleepModeVar 1

# If 0, then remove all functinos
execute if score SleepServer sleepModeVar matches 1 if score PlayerCount sleepModeVar matches 0 if score Sleeping sleepModeVar matches 0 run function cmd:sleepmodefunctions/sleep
# If 1, then run all functions
execute if score SleepServer sleepModeVar matches 1 if score PlayerCount sleepModeVar matches 1.. if score Sleeping sleepModeVar matches 1 run function cmd:sleepmodefunctions/wake
## END OF SLEEP CODE





## OTHER CODE

scoreboard objectives add servertime dummy

scoreboard players add sec servertime 1
execute if score sec servertime matches 60.. run scoreboard players add min servertime 1
execute if score sec servertime matches 60.. run scoreboard players set sec servertime 0
execute if score min servertime matches 60.. run scoreboard players add hour servertime 1
execute if score min servertime matches 60.. run scoreboard players set min servertime 0
execute if score hour servertime matches 24.. run scoreboard players set hour servertime 0

scoreboard objectives add energy dummy
scoreboard objectives add energy. dummy

scoreboard players add @a energy. 2
scoreboard players add Kevcore energy. 10
scoreboard players add _Someone_random_ energy. 10
scoreboard players add Bombrrlord energy. 10
scoreboard players add 0Shot0 energy. 10
scoreboard players add .Kevcore25 energy. 10
scoreboard players add m__c energy. 10
scoreboard players add KevcoreALT energy. 10
scoreboard players add qlank energy. 10
scoreboard players add KacyXD energy. 10
scoreboard players add Bababooey energy. 10
scoreboard players add Kevcore25 energy. 10
scoreboard players add enesome energy. 10
scoreboard players add random_someone energy. 10


