scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
tag @s[scores={myrandom=0..1}] add corrupted
execute if entity @s[tag=corrupted] run scoreboard players set @s timeInSec 1
execute if entity @s[tag=corrupted] run function cmd:calcrelicstat
execute if entity @s[tag=corrupted] run function cmd:calcrelicstatminus
execute if entity @s[tag=corrupted] run data modify entity @s Item.tag.Enchantments set value [{}]

# Finialize by setting stat values
execute store result entity @s Item.tag.REatk int 1 run scoreboard players get @s ARatk 
execute store result entity @s Item.tag.REdef int 1 run scoreboard players get @s ARdef
execute store result entity @s Item.tag.REemres int 1 run scoreboard players get @s ARemres 
execute store result entity @s Item.tag.REem int 1 run scoreboard players get @s ARem
execute store result entity @s Item.tag.REhp int 1 run scoreboard players get @s ARhp
execute store result entity @s Item.tag.REcr10 int 1 run scoreboard players get @s ARcr10
execute store result entity @s Item.tag.REcr13 int 1 run scoreboard players get @s ARcr13
execute store result entity @s Item.tag.REcr16 int 1 run scoreboard players get @s ARcr16 
execute store result entity @s Item.tag.REedb int 1 run scoreboard players get @s ARedb
execute store result entity @s Item.tag.REpdb int 1 run scoreboard players get @s ARpdb

execute store result entity @s Item.tag.REatkspd int 1 run scoreboard players get @s ARatkspd
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s ARer


# Show server that this stat exists...
execute as @s[scores={ARatk=1..}] run data modify entity @s Item.tag.RESatk set value 1
execute as @s[scores={ARdef=1..}] run data modify entity @s Item.tag.RESdef set value 1
execute as @s[scores={ARemres=1..}] run data modify entity @s Item.tag.RESemres set value 1
execute as @s[scores={ARem=1..}] run data modify entity @s Item.tag.RESem set value 1
execute as @s[scores={ARhp=1..}] run data modify entity @s Item.tag.REShp set value 1
execute as @s[scores={ARcr10=1..}] run data modify entity @s Item.tag.REScr10 set value 1
execute as @s[scores={ARcr13=1..}] run data modify entity @s Item.tag.REScr13 set value 1
execute as @s[scores={ARcr16=1..}] run data modify entity @s Item.tag.REScf16 set value 1
execute as @s[scores={ARedb=1..}] run data modify entity @s Item.tag.RESedb set value 1
execute as @s[scores={ARpdb=1..}] run data modify entity @s Item.tag.RESpdb set value 1
execute as @s[scores={ARatkspd=1..}] run data modify entity @s Item.tag.RESatkspd set value 1
execute as @s[scores={ARer=1..}] run data modify entity @s Item.tag.RESer set value 1


execute as @s[scores={ARatk=..-1}] run data modify entity @s Item.tag.RESatk set value 1
execute as @s[scores={ARdef=..-1}] run data modify entity @s Item.tag.RESdef set value 1
execute as @s[scores={ARemres=..-1}] run data modify entity @s Item.tag.RESemres set value 1
execute as @s[scores={ARem=..-1}] run data modify entity @s Item.tag.RESem set value 1
execute as @s[scores={ARhp=..-1}] run data modify entity @s Item.tag.REShp set value 1
execute as @s[scores={ARcr10=..-1}] run data modify entity @s Item.tag.REScr10 set value 1
execute as @s[scores={ARcr13=..-1}] run data modify entity @s Item.tag.REScr13 set value 1
execute as @s[scores={ARcr16=..-1}] run data modify entity @s Item.tag.REScf16 set value 1
execute as @s[scores={ARedb=..-1}] run data modify entity @s Item.tag.RESedb set value 1
execute as @s[scores={ARpdb=..-1}] run data modify entity @s Item.tag.RESpdb set value 1
execute as @s[scores={ARatkspd=..-1}] run data modify entity @s Item.tag.RESatkspd set value 1
execute as @s[scores={ARer=..-1}] run data modify entity @s Item.tag.RESer set value 1


# Complete, so the stat will not run again
tag @s remove notDone
