## XP. 

# patches exploits
execute if block ~ ~ ~ grindstone run tag @s add noXP

# remove some exploits (removes furnaces, but may destroy code..)
execute if entity @a[distance=..0.01] run tag @s add noXP

# begin schedule (should prevent scattered xp)
execute if entity @s[tag=!noXP] unless entity @e[type=marker,tag=XPtemp,distance=..2] run summon marker ~ ~ ~ {Tags:[XPtemp]}
execute if entity @s[tag=!noXP] run schedule function cmd:xp2 1t replace

# kill
kill @s
