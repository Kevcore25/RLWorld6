scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
execute if entity @s[scores={myrandom=0}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -1 Attack Stat","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=0}] run scoreboard players remove @s ARatk 1
execute if entity @s[scores={myrandom=1}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -1 Defense Stat","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=1}] run scoreboard players remove @s ARdef 1
execute if entity @s[scores={myrandom=2}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -1 Elemental Resistance Stat","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=2}] run scoreboard players remove @s ARemres 1
execute if entity @s[scores={myrandom=3}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -1 Elemental Mastery Stat","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=3}] run scoreboard players remove @s ARem 1
execute if entity @s[scores={myrandom=4}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -1 Health Stat","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=4}] run scoreboard players remove @s ARhp 1
execute if entity @s[scores={myrandom=5}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -30% Physical DMG Bonus","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=5}] run scoreboard players remove @s ARpdb 1
execute if entity @s[scores={myrandom=6}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -10% Critical Chance","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=6}] run scoreboard players remove @s ARcr10 1
execute if entity @s[scores={myrandom=7}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -13% Critical Chance","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=7}] run scoreboard players remove @s ARcr13 1
execute if entity @s[scores={myrandom=8}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -16% Critical Chance","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=8}] run scoreboard players remove @s ARcr16 1
execute if entity @s[scores={myrandom=9}] run data modify entity @s Item.tag.display.Lore append value '[{"text":"  -20% Elemental DMG Bonus","italic":false,"color":"aqua"}]'
execute if entity @s[scores={myrandom=9}] run scoreboard players remove @s ARedb 1

execute if entity @s[nbt={Item:{id:"minecraft:diamond_horse_armor"}}] run data modify entity @s Item.tag.display.Name set value '[{"text":"Diamond Relic","italic":false,"obfuscated":true,"color":"light_purple"}]'
execute if entity @s[nbt={Item:{id:"minecraft:golden_horse_armor"}}] run data modify entity @s Item.tag.display.Name set value '[{"text":"Gold Relic","italic":false,"obfuscated":true,"color":"light_purple"}]'
execute if entity @s[nbt={Item:{id:"minecraft:iron_horse_armor"}}] run data modify entity @s Item.tag.display.Name set value '[{"text":"Silver Relic","italic":false,"obfuscated":true,"color":"light_purple"}]'
execute if entity @s[nbt={Item:{id:"minecraft:leather_horse_armor"}}] run data modify entity @s Item.tag.display.Name set value '[{"text":"Bronze Relic","italic":false,"obfuscated":true,"color":"light_purple"}]'