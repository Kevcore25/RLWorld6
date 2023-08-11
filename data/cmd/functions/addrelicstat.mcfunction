scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen


execute store result score @s ARatk run data get entity @s Item.tag.REatk
execute store result score @s ARdef run data get entity @s Item.tag.REdef
execute store result score @s ARemres run data get entity @s Item.tag.REemres
execute store result score @s ARem run data get entity @s Item.tag.REem
execute store result score @s ARhp run data get entity @s Item.tag.REhp
execute store result score @s ARcr10 run data get entity @s Item.tag.REcr10
execute store result score @s ARcr13 run data get entity @s Item.tag.REcr13
execute store result score @s ARcr16 run data get entity @s Item.tag.REcr16
execute store result score @s ARedb run data get entity @s Item.tag.REedb
execute store result score @s ARpdb run data get entity @s Item.tag.REpdb

execute if entity @s[scores={myrandom=0}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +1 Attack Stat","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=0}] run scoreboard players add @s ARatk 1
execute if entity @s[scores={myrandom=1}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +1 Defense Stat","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=1}] run scoreboard players add @s ARdef 1
execute if entity @s[scores={myrandom=2}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +1 Elemental Resistance Stat","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=2}] run scoreboard players add @s ARemres 1
execute if entity @s[scores={myrandom=3}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +1 Elemental Mastery Stat","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=3}] run scoreboard players add @s ARem 1
execute if entity @s[scores={myrandom=4}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +1 Health Stat","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=4}] run scoreboard players add @s ARhp 1
execute if entity @s[scores={myrandom=5}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +30% Physical DMG Bonus","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=5}] run scoreboard players add @s ARpdb 1
execute if entity @s[scores={myrandom=6}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +10% Critical Chance","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=6}] run scoreboard players add @s ARcr10 1
execute if entity @s[scores={myrandom=7}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +13% Critical Chance","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=7}] run scoreboard players add @s ARcr13 1
execute if entity @s[scores={myrandom=8}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +16% Critical Chance","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=8}] run scoreboard players add @s ARcr16 1
execute if entity @s[scores={myrandom=9}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  +20% Elemental DMG Bonus","italic":false,"color":"dark_aqua"}]'
execute if entity @s[scores={myrandom=9}] run scoreboard players add @s ARedb 1

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


# How many times?

data modify entity @s[nbt=!{Item:{tag:{Enhanced:1}}}] Item.tag.EnhancerTimes set value 1

data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 2
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 3
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 4
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 5
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 6
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 7
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 8
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 9
data modify entity @s[nbt={Item:{tag:{EnchanerTimes:1}}}] Item.tag.EnhancerTimes set value 10


data modify entity @s Item.tag.Enhanced set value 1

# execute as @s[scores={ARdef=1..}] run data modify entity @s Item.tag.REdef set value 1
# execute as @s[scores={ARemres=1..}] run data modify entity @s Item.tag.REemres set value 1
# execute as @s[scores={ARem=1..}] run data modify entity @s Item.tag.REem set value 1
# execute as @s[scores={ARhp=1..}] run data modify entity @s Item.tag.REhp set value 1
# execute as @s[scores={ARcr10=1..}] run data modify entity @s Item.tag.REcr10 set value 1
# execute as @s[scores={ARcr13=1..}] run data modify entity @s Item.tag.REcr13 set value 1
# execute as @s[scores={ARcr16=1..}] run data modify entity @s Item.tag.REcf16 set value 1
# execute as @s[scores={ARedb=1..}] run data modify entity @s Item.tag.REedb set value 1
# execute as @s[scores={ARpdb=1..}] run data modify entity @s Item.tag.REpdb set value 1
# execute as @s[scores={ARatkspd=1..}] run data modify entity @s Item.tag.REatkspd set value 1
# execute as @s[scores={ARer=1..}] run data modify entity @s Item.tag.REer set value 1


# Finialize by setting stat values
execute store result entity @s Item.tag.REatk int 1 run scoreboard players get @s[scores={ARatk=..4}] ARatk 
execute store result entity @s Item.tag.REdef int 1 run scoreboard players get @s[scores={ARdef=..4}] ARdef
execute store result entity @s Item.tag.REemres int 1 run scoreboard players get @s[scores={ARemres=..4}] ARemres 
execute store result entity @s Item.tag.REem int 1 run scoreboard players get @s[scores={ARem=..4}] ARem
execute store result entity @s Item.tag.REhp int 1 run scoreboard players get @s[scores={ARhp=..4}] ARhp
execute store result entity @s Item.tag.REcr10 int 1 run scoreboard players get @s[scores={ARcr10=..4}] ARcr10
execute store result entity @s Item.tag.REcr13 int 1 run scoreboard players get @s[scores={ARcr13=..4}] ARcr13
execute store result entity @s Item.tag.REcf16 int 1 run scoreboard players get @s[scores={ARcr16=..4}] ARcr16 
execute store result entity @s Item.tag.REedb int 1 run scoreboard players get @s[scores={ARedb=..4}] ARedb
execute store result entity @s Item.tag.REpdb int 1 run scoreboard players get @s[scores={ARpdb=..4}] ARpdb

execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARatk=5..}] ARatk 
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARdef=5..}] ARdef
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARemres=5..}] ARemres 
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARem=5..}] ARem
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARhp=5..}] ARhp
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARcr10=5..}] ARcr10
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARcr13=5..}] ARcr13
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARcr16=5..}] ARcr16 
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARedb=5..}] ARedb
execute store result entity @s Item.tag.REer int 1 run scoreboard players get @s[scores={ARpdb=5..}] ARpdb