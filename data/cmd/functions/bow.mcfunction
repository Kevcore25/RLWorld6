## use bow function
# Kevcore 2023/06/01
# bow types: 1 flint 2 copper 3 iron 4 gold 5 diamond 6 netherite
execute unless entity @s[nbt={SelectedItem:{tag:{TierBow:1}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:0.2, crit:0}

execute if entity @s[nbt={SelectedItem:{tag:{BowType:1}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:1, crit:0}
execute if entity @s[nbt={SelectedItem:{tag:{BowType:2}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:1.5, crit:0}
execute if entity @s[nbt={SelectedItem:{tag:{BowType:3}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:2, crit:0}
execute if entity @s[nbt={SelectedItem:{tag:{BowType:4}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:1, crit:0}
execute if entity @s[nbt={SelectedItem:{tag:{BowType:5}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:2.5, crit:0}
execute if entity @s[nbt={SelectedItem:{tag:{BowType:6}}}] as @e[type=arrow,distance=..3,sort=nearest,limit=1] run data merge entity @s {damage:3, crit:0}
execute as @e[type=arrow,distance=..3,sort=nearest,limit=1] run tag @s add done