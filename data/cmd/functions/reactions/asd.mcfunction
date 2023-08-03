#base
scoreboard players set @s burning 50

execute if entity @p[scores={ARem=1}] run scoreboard players set @s burning 60
execute if entity @p[scores={ARem=2}] run scoreboard players set @s burning 70
execute if entity @p[scores={ARem=3}] run scoreboard players set @s burning 80
execute if entity @p[scores={ARem=4..}] run scoreboard players set @s burning 100

data merge entity @s {Fire:100s}

effect clear @s bad_omen