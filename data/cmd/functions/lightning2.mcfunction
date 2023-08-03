## Lightning
# Kevcore 2023/06/19

# This is used for the rainbow aspect's ultimate

# Apply status ID
scoreboard players set @s currentStatus 104

# Summon lightning
execute at @s run summon lightning_bolt

# Apply elements. Creates radiation
execute at @s run effect give @e[distance=..1.2] hero_of_the_village 1 0 true
execute at @s run effect give @e[distance=..1.2] conduit_power 1 0 true
