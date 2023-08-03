## Lightning
# Kevcore 2023/05/29

# This is used for the cmd:sec's lightning DMG

# Apply status ID
execute positioned 1000 200 1000 unless entity @s[distance=..36] run scoreboard players set @s currentStatus 104

# Summon lightning
execute positioned 1000 200 1000 unless entity @s[distance=..36] run execute at @s run summon lightning_bolt

# Apply elements. Creates radiation
execute positioned 1000 200 1000 unless entity @s[distance=..36] run execute at @s run effect give @e[distance=..2] hero_of_the_village 1 0 true
execute positioned 1000 200 1000 unless entity @s[distance=..36] run execute at @s run effect give @e[distance=..2] conduit_power 1 0 true
