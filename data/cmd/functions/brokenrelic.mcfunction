
#remove pickup relic
clear @s diamond_horse_armor{GetRelic:1}
# fix 2 relics
tag @s add SREClaimed
# summon it
summon item ~ ~ ~ {Tags:["notDone","nopickupdelay"],PickupDelay:0s,Item:{id:"minecraft:diamond_horse_armor",Count:1b,tag:{Enchantments:[{id:"minecraft:mending",lvl:1}],HideFlags:1,Relic:1,RelicType:4,display:{Name:'[{"text":"OP Relic","italic":false,"color":"aqua"}]', Lore:['[{"text":"Relic Stats:","italic":false,"color":"light_purple"}]']}}}}

# Each time, new stat is added
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 Elemental Mastery Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARem 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 Health Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARhp 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 Attack Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARatk 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 SP Regeneration Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARer 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 Defense Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARdef 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 Attack Speed Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARatkspd 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 80% Elemental DMG Bonus","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARedb 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 120% Physical DMG Bonus","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARpdb 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 4 Elemental Resistance Stat","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARemres 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run data modify entity @s Item.tag.display.Lore append value '[{"text":"+ 156% Critcial Chance","italic":false,"color":"aqua"}]'
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARcr10 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARcr13 4
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run scoreboard players set @s ARcr16 4

# Finialize by setting stat values
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run function cmd:calcrelicstatfinal
