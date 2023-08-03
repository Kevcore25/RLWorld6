schedule function cmd:5sec 5s


scoreboard players set cl-remove cltemptps 0

scoreboard objectives remove serverStats

scoreboard objectives add serverStats dummy [{"text":"RL","color":"green"},{"text":"World","color":"dark_green"},{"text":" Debug Stats","color":"dark_aqua"}]
scoreboard objectives setdisplay sidebar serverStats

#tag @r add CLtemp
team add SS
team modify SS suffix ": "
team modify SS color light_purple
team join SS TPS
team join SS Entities
team join SS Viewable
team join SS Players
team join SS ----------
#/give @p warped_fungus_on_a_stick{RMBDetection:2,display:{Name:'[{"text":"Use Unlocker","italic":false}]',Lore:['[{"text":"Unlocks the custom features which require the use feature.","italic":false,"color":"gray"}]','[{"text":"Must be on off-hand to work!","italic":false,"color":"gray"}]']},Enchantments:[{}]} 1
team add SS-EV
team join SS-EV Ent
team modify SS-EV suffix "itites Active: "
team modify SS-EV color light_purple

scoreboard players set Lag serverStats -1
team add SS-serverLag
team modify SS-serverLag prefix "Server "
team modify SS-serverLag color aqua
team join SS-serverLag Lag

# execute as @a[scores={food=18..}] run effect give @s[scores={thirst=13..}] regeneration 1 2 true
# execute as @a[scores={food=18..}] run effect give @s[scores={thirst=13..}] hunger 1 9 true

execute as @r store result score TPS serverStats run debug stop

scoreboard players set Entities serverStats 0
scoreboard players set Ent serverStats 0
scoreboard players set Viewable serverStats 0

# players online
scoreboard players set ---------- serverStats -9
scoreboard players set Players serverStats -10
scoreboard players set @a[tag=!spectating] serverStats -11

execute if score TPS serverStats matches 21.. run team modify SS-serverLag suffix [": ", {"text": "Low","color":"white"}]
execute if score TPS serverStats matches 19..20 run team modify SS-serverLag suffix [": ", {"text": "Very Low","color":"green"}]
execute if score TPS serverStats matches 17..18 run team modify SS-serverLag suffix [": ", {"text": "Low","color":"green"}]
execute if score TPS serverStats matches 15..16 run team modify SS-serverLag suffix [": ", {"text": "Medium","color":"yellow"}]
execute if score TPS serverStats matches 13..14 run team modify SS-serverLag suffix [": ", {"text": "Somewhat High","color":"gold"}]
execute if score TPS serverStats matches 11..12 run team modify SS-serverLag suffix [": ", {"text": "High","color":"red"}]
execute if score TPS serverStats matches 2..10 run team modify SS-serverLag suffix [": ", {"text": "Very High","color":"dark_red"}]
execute if score TPS serverStats matches 0..1 run team modify SS-serverLag suffix [": ", {"text": "Calculating...","color":"white"}]

execute as @e run scoreboard players add Entities serverStats 1
execute at @a[tag=!spectating] as @e[distance=..24] run scoreboard players add Ent serverStats 1
execute at @a as @e[distance=..96] run scoreboard players add Viewable serverStats 1

execute if score TPS serverStats matches ..10 run scoreboard players set cl-remove cltemptps 1
execute if score Entities serverStats matches 2000.. run scoreboard players set cl-remove cltemptps 1
execute if score TPS serverStats matches ..18 if score Entities serverStats matches 1000.. run scoreboard players set cl-remove cltemptps 1

execute if score cl-remove cltemptps matches 1 run tellraw @a ["",{"text":"\n"},{"text":"RLWorld Notice","bold":true,"color":"red"},{"text":":\nMany entities will be removed!","color":"red"},{"text":"(~5 seconds)!","color":"aqua"},{"text":"\n"},{"text":"Debug stats: TPS: ","italic":true,"color":"gray"},{"score":{"name":"TPS","objective":"serverStats"},"italic":true,"color":"gray"},{"text":" | Entity Count: ","italic":true,"color":"gray"},{"score":{"name":"Entities","objective":"serverStats"},"italic":true,"color":"gray"},{"text":"/1000\n","color": "gray","italic": true}]
execute if score cl-remove cltemptps matches 1 if score TPS serverStats matches 16.. run schedule function cmd:clearlag 98t 
execute if score cl-remove cltemptps matches 1 if score TPS serverStats matches 11..15 run schedule function cmd:clearlag 4s 
execute if score cl-remove cltemptps matches 1 if score TPS serverStats matches 8..10 run schedule function cmd:clearlag 3s 
execute if score cl-remove cltemptps matches 1 if score TPS serverStats matches 6..7 run schedule function cmd:clearlag 2s 
execute if score cl-remove cltemptps matches 1 if score TPS serverStats matches 3..5 run schedule function cmd:clearlag 1s 
execute if score cl-remove cltemptps matches 1 if score TPS serverStats matches ..2 run function cmd:clearlag

debug start


## noAI performance increase

# execute at @a as @e[distance=25..,tag=!noAIpi] if entity @s[tag=!important] run tellraw @a[tag=debuger] [{"text": "[AIReducer] Enabled AI for ","color": "gray"},{"selector":"@s"},{"text": "","color": "gray"}]
# execute at @a as @e[distance=25..,tag=!important] run data merge entity @s {NoAI:1b}
# execute at @a as @e[distance=25..,tag=!important] run tag @s add noAIpi

execute as @e[type=horse] at @s run attribute @s generic.movement_speed base set 0.3375

execute as @e[type=horse] run attribute @s horse.jump_strength base set 1
execute as @e[type=horse] run attribute @s generic.max_health base set 40