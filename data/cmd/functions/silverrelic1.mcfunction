
#remove pickup relic
clear @s iron_horse_armor{GetRelic:1}
# fix 2 relics
tag @s add SREClaimed
# summon it
summon item ~ ~ ~ {Tags:["notDone","nopickupdelay"],PickupDelay:0s,Item:{id:"minecraft:iron_horse_armor",Count:1b,tag:{Relic:1,RelicType:2,display:{Name:'[{"text":"Silver Relic","italic":false,"color":"aqua"}]', Lore:['[{"text":"Relic Stats:","italic":false,"color":"light_purple"}]']}}}}
# Each time, new stat is added
scoreboard players set @e[type=item,tag=notDone,limit=1,distance=..0.1] timeInSec 1
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run function cmd:calcrelicstat

# Finialize by setting stat values
execute as @e[type=item,tag=notDone,limit=1,distance=..0.1] at @s run function cmd:calcrelicstatfinal
