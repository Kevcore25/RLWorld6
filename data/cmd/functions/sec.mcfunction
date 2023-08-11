schedule function cmd:sec 1s replace

scoreboard objectives add welcomeTxt dummy
scoreboard players add @a welcomeTxt 1

# Fix title issue
scoreboard players set @a[scores={welcomeTxt=1}] stamina 100
scoreboard players set @a[scores={welcomeTxt=1}] tempElytra 100

title @a[scores={welcomeTxt=10}] times 20 100 20
title @a[scores={welcomeTxt=11..21}] times 0 100 20

title @a[scores={welcomeTxt=10..14}] title ["",{"text":"Welcome to ","bold":true,"color":"light_purple"},{"text":"RL","bold":true,"color":"dark_green"},{"text":"World","bold":true,"color":"green"},{"text":"5","bold":true,"color":"yellow"},{"text":"!","bold":true,"color":"light_purple"}]
title @a[scores={welcomeTxt=10..14}] subtitle {"text":"Inspired by Genshin Impact and RLCraft","italic":true,"color":"gray"}

tellraw @a[scores={welcomeTxt=26}] ["",{"text":"\n"},{"text":"The RLWorld documentation can be found ","bold":true,"color":"green"},{"text":"here","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1hyT8JY1QJCPAsL0furlQ-2tT_uziXVXC6d9-gTAgY6E/edit#"}},{"text":"\n "}]

title @a[scores={welcomeTxt=15..21}] title {"text":"Let's get you started","bold":true,"color":"light_purple"}
title @a[scores={welcomeTxt=15..21}] subtitle {"text":"Read the chat.","color":"light_purple"}

give @a[scores={welcomeTxt=20},tag=easyMode] wooden_axe
give @a[scores={welcomeTxt=20},tag=easyMode] wooden_pickaxe
give @a[scores={welcomeTxt=20},tag=easyMode] wooden_shovel


tellraw @a[scores={welcomeTxt=16},tag=easyMode] ["",{"text":"\n"},{"text":"Choose 1 sword to help you start:","color":"green"},{"text":"\n"},{"text":"Flame Aspect","italic":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger type set -101"}},{"text":"\n"},{"text":"Ice Aspect","italic":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger type set -102"}},{"text":"\n","italic":true},{"text":"Water Aspect","italic":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger type set -103"}},{"text":"\n","italic":true},{"text":"Electric Aspect","italic":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set -104"}},{"text":"\n","italic":true},{"text":"Nature Aspect","italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger type set -105"}},{"text":"\n\n","italic":true},{"text":"Dying with 0 XP will clear your inventory!","italic":true,"color":"gray"},{"text":"\n"}]

execute as @a[tag=easyMode,scores={xp=..99}] run xp add @s 100 levels
#execute as m__c run spectate enesome

#execute in the_end at @e[type=enderman,distance=0..] run summon ghast ~ ~10 ~
#execute in the_end as @e[type=enderman,distance=0..] run kill @s
execute as @e[type=minecraft:ender_dragon,tag=CustomPetDragon] run data merge entity @s {Motion:[0.0,-2.5,0.0]}

scoreboard players remove @a[scores={peachLimit=1..}] peachLimit 1


tag @e[type=zombie] add undead
tag @e[type=drowned] add undead
tag @e[type=skeleton] add undead
tag @e[type=zombified_piglin] add undead
tag @e[type=skeleton_horse] add undead

tag @e[type=phantom] add undead
tag @e[type=stray] add undead
tag @e[type=husk] add undead

execute at @r if block ~ ~ ~1 end_portal_frame[eye=true] if block ~ ~ ~-1 end_portal_frame[eye=true] if block ~1 ~ ~ end_portal_frame[eye=true] if block ~-1 ~ ~ end_portal_frame[eye=true] run setblock ~ ~ ~ end_portal destroy

tag @e[type=ender_dragon] add noreplacearmor
tag @e[type=armor_stand] add noreplacearmor
tag @e[type=item] add noreplacearmor
tag @a add noreplacearmor
tag @e[type=ghast] add noreplacearmor

execute as @e[type=villager,tag=!RMBdetection] run effect give @s regeneration infinite 4 true
execute as @e[type=villager,tag=!RMBdetection] run data merge entity @s {VillagerData:{profession:nitwit,level:0},Tags:["nonaturalres"]}
execute as @e[type=villager,tag=!RMBdetection] run attribute @s generic.max_health base set 100

execute as @e[type=villager,tag=RMBdetection] run data merge entity @s {Age:2,Silent:1b,NoAI:1b}
execute as @e[type=villager,tag=RMBdetection] run effect give @s resistance 1000 255 true
execute as @e[type=villager,tag=RMBdetection] run effect give @s invisibility 1000 1 true

tag @e[type=blaze] add fromNether
tag @e[type=ghast] add fromNether
tag @e[type=hoglin] add fromNether
tag @e[type=magma_cube] add fromNether
tag @e[type=piglin] add fromNether
tag @e[type=piglin_brute] add fromNether
tag @e[type=skeleton] add fromNether
tag @e[type=strider] add fromNether
tag @e[type=wither_skeleton,tag=!fromNether] add fromNether
tag @e[type=giant] add fromNether
tag @e[type=zombified_piglin] add fromNether
tag @e[type=enderman] add fromNether



execute as @a[tag=!spectating] if entity @s run attribute @s generic.movement_speed base set 0.1
execute as @e[type=!player] run attribute @s generic.movement_speed base set 0.25



tag @e[type=ender_dragon] add important
tag @e[type=wither] add important
tag @e[type=player] add important
tag @e[type=armor_stand] add important
tag @e[type=horse] add important
tag @e[type=wolf] add important
execute if entity @s[gamemode=!spectator] at @s if block ~ ~ ~ #doors if block ~ ~1 ~ water run fill ~ ~1 ~ ~ ~ ~ water destroy
execute if entity @s[gamemode=!spectator] at @s if block ~ ~ ~ #doors if block ~ ~2 ~ water run fill ~ ~1 ~ ~ ~ ~ water destroy
execute if entity @s[gamemode=!spectator] at @s if block ~ ~1 ~ #doors if block ~ ~3 ~ water run fill ~ ~1 ~ ~ ~ ~ water destroy


tag @a add FastFire

scoreboard players add @a wildcooldown 0
scoreboard players enable @a wild
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=..99},distance=0..] run tellraw @s {"text":"Wild requires 100 Skill Points!","color":"red"}
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run tellraw @s {"text":"Teleporting... please wait a few seconds","color":"light_purple"}
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run tellraw @a [{"selector":"@s","color": "green"},{"text":" is wilding. Expect server lag!","color":"light_purple"}]

# #execute as @a[tag=!spectating] if entity @s[scores={wild=1..}] at @s[scores={wildcooldown=0}] run execute positioned 0 0 0 run spreadplayers ~ ~ 10000 20000 false @s
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run execute positioned 0 0 0 run spreadplayers ~ ~ 500 1000 false @s
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run give @s oak_log 4
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run tellraw @s {"text":"Wild teleported!","color":"light_purple"}
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run tellraw @a [{"selector":"@s","color": "green"},{"text":" finished his or her wild!","color":"light_purple"}]
# execute as @a[tag=!spectating] if entity @s[scores={wild=1..}] at @s[scores={wildcooldown=1..,xp=100..}] run tellraw @s [{"text":"You can wild teleport in ","color":"red"},{"score":{"name":"@s","objective":"wildcooldown"},"color":"red"},{"text":" seconds","color":"red"}]
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run xp add @s -100 levels
# execute in overworld as @a[scores={wild=1..,wildcooldown=0,xp=100..},distance=0..] run scoreboard players set @s wildcooldown 300
# execute in the_nether as @a[scores={wild=1..,wildcooldown=0},distance=0..] run tellraw @s [{"text":"You can only wild teleport in the overworld!","color":"red"}]
# execute in the_end as @a[scores={wild=1..,wildcooldown=0},distance=0..] run tellraw @s [{"text":"You can only wild teleport in the overworld!","color":"red"}]
execute as @a[tag=!spectating] if entity @s[scores={wild=1..}] run tellraw @s [{"text":"Wild command is disabled due to world lag issues. Thanks for understanding.","color":"red"}]

execute as @e[type=drowned,tag=!done] run data merge entity @s {Health:100,Attributes:[{Name:"generic.max_health",Base:100f}],Tags:[noreplacearmor,done],HandItems:[{id:trident,Count:1},{id:golden_apple,Count:2}],HandDropChances:[0.05f,1.00f],ArmorItems:[{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:diamond_helmet,Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f]}
execute as @e[type=drowned,tag=!done] run tag @s add done

scoreboard players set @a wild 0 
scoreboard players add @a cwilddown 0

effect give @a mining_fatigue 10 1 true

scoreboard players add @a timeInSec 1
scoreboard players add @a timeInMin 0

setblock -1 67 0 dark_oak_wall_sign[facing=east]{Text1:'{"text":"Teleport to a","clickEvent":{"action":"run_command","value":"trigger wild"},"color":"light_purple"}',Text2:'{"text":"randomized place","color":"light_purple"}',Text3:'["",{"text":"(","color":"light_purple"},{"text":"/trigger wild","color":"aqua"},{"text":")","color":"light_purple"}]',Text4:'{"text":"(Click)","bold":true,"color":"yellow"}'}

execute as @a[tag=!spectating] if entity @s[scores={timeInSec=60..}] run scoreboard players add @s timeInMin 1
execute as @a[tag=!spectating] if entity @s[scores={timeInSec=60..}] run scoreboard players set @s timeInSec 0
execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=0}] run trigger type set 111100
execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=0}] run xp set @s 0 levels
execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=0}] run tag @s add titlestamina
execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=0}] run tp 0 66 0
execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=0}] run tellraw @s {"text":"Register to play on this server. Make up a random thing/word for your password. Then type /register <the password you chose> <repeat it>","color":"gold"}
# execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=1}] run tellraw @s {"text":"TIP: To get wood, mine a tree with your axe and then turn the slabs into planks (put 2 slabs next to each other)","color":"gold"}
# execute as @a[tag=!spectating] if entity @s[scores={timeInSec=1}] at @s[scores={timeInMin=2}] run tellraw @s {"text":"TIP: To heal the most effective way, eat golden apples. Mining a gold ore will drop 2 golden apples","color":"gold"}
# execute as @a[tag=!spectating] if entity @s[scores={timeInSec=10}] at @s[scores={timeInMin=0}] run tellraw @s {"text":"TIP: Hacking/Cheating/Exploiting is not allowed. This includes xraying. Diamonds are also easier to get","color":"gold"}
# execute as @a[tag=!spectating] if entity @s[scores={timeInSec=0}] at @s[scores={timeInMin=3}] run tellraw @s {"text":"TIP: Don't be sad if you die. It's normal, and happens to most of us.","color":"gold"}
# execute as @a[tag=!spectating] if entity @s[scores={timeInSec=0}] at @s[scores={timeInMin=4}] run tellraw @s {"text":"TIP: Structure blocks are useful. Craft them using 8 eyes of ender and a diamond block","color":"gold"}
# execute as @a[tag=!spectating] if entity @s[scores={timeInSec=0}] at @s[scores={timeInMin=5}] run tellraw @s {"text":"LAST TIP: Explore the commands you can use (Just type \"/trigger \" if you're on 1.13+ to see some commands)\nYou can also get your dailies (/trigger quest1) which give dexacore (trading currency)","color":"gold"}

scoreboard players add @a gatheringLvl 0
scoreboard players add @a defenseLvl 0

effect give @a[tag=BedrockUser] haste 61 1 true
effect give @e[type=zombie] speed infinite 2 true

tag @e[type=pig] add small
tag @e[type=cow] add small
tag @e[type=chicken] add small
tag @e[type=sheep] add small

tag @e[type=phantom] add large

#effect give @a[scores={thirst=17..18}] hunger 2 0 true
#effect give @a[scores={thirst=15..16}] hunger 2 1 true
#effect give @a[scores={thirst=13..14}] hunger 2 2 true

# execute in the_nether at @a[distance=0..] run effect give @e[distance=..24,type=!enderman] hero_of_the_village 1 0 true 

#effect give @a[scores={thirst=5..6}] hunger 2 7 true
#effect give @a[scores={thirst=3..4}] hunger 2 8 true
#effect give @a[scores={thirst=..2}] hunger 2 9 true
scoreboard players add @a spawncooldown 0
#execute at @e run fill ~15 10 ~15 ~-15 40 ~-15 cave_air replace air
#execute at @e run fill ~15 41 ~15 ~-15 50 ~-15 cave_air replace air
#execute at @e run fill ~15 51 ~15 ~-15 81 ~-15 air replace cave_air
#execute at @a[tag=!spectator] as @e[distance=..24] if score TPS serverStats matches 16.. run function cmd:showhealth


execute as @a[tag=!spectating] if entity @s[scores={Run=1..}] at @s if block ~ ~ ~ stone_button[face=floor,facing=north] run damage @s 1 fall
execute as @a[tag=!spectating] if entity @s[scores={stoneRewards=101..}] run scoreboard players set @r stoneRewards 0

#effect give @e[type=!player] speed 10 0 true

effect clear @a fire_resistance
item replace entity @e[type=minecraft:pillager,tag=exploder] weapon.offhand with tipped_arrow{CustomPotionColor:0,display:{Name:'[{"text":"Explosion Arrow","italic":false}]'},CustomPotionEffects:[{Id:25,Duration:10},{Id:9,Duration:10}]} 1
item replace entity @e[type=minecraft:pillager,tag=icePillager] weapon.offhand with minecraft:tipped_arrow{IceArrow:1,display:{Name:'[{"text":"Snow Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Ice on hit","italic":false,"color":"gray"}]']},CustomPotionEffects:[{ShowParticles:1b,Id:2,Duration:60,ShowIcon:1b,Amplifier:1b,Ambient:0b}],HideFlags:32,CustomPotionColor:65535,Potion:"minecraft:empty"} 2
item replace entity @e[type=minecraft:pillager,tag=firePillager] weapon.offhand with minecraft:tipped_arrow{FireArrow:1,display:{Name:'[{"text":"Flaming Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Fire on hit","italic":false,"color":"gray"}]','[{"text":"Does not set entity on fire!","italic":false,"color":"gray"}]']},CustomPotionEffects:[{ShowParticles:1b,Id:32,Duration:60,ShowIcon:1b,Amplifier:1b,Ambient:0b}],HideFlags:32,CustomPotionColor:16744448,Potion:"minecraft:empty"} 2
item replace entity @e[type=minecraft:pillager,tag=waterPillager] weapon.offhand with minecraft:tipped_arrow{WaterArrow:1,display:{Name:'[{"text":"Water-infused Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Water on hit","italic":false,"color":"gray"}]']},CustomPotionEffects:[{ShowParticles:1b,Id:27,Duration:60,ShowIcon:1b,Amplifier:1b,Ambient:0b}],HideFlags:32,CustomPotionColor:255,Potion:"minecraft:empty"} 3
item replace entity @e[type=minecraft:pillager,tag=electricPillager] weapon.offhand with minecraft:tipped_arrow{ElectricArrow:1,display:{Name:'[{"text":"Electrified Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Electric on hit","italic":false,"color":"gray"}]']},CustomPotionEffects:[{ShowParticles:1b,Id:29,Duration:80,ShowIcon:1b,Amplifier:1b,Ambient:0b}],HideFlags:32,CustomPotionColor:16776960,Potion:"minecraft:empty"} 3
item replace entity @e[type=minecraft:pillager,tag=naturePillager] weapon.offhand with minecraft:tipped_arrow{NatureArrow:1,display:{Name:'[{"text":"Grass Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Nature on hit","italic":false,"color":"gray"}]']},CustomPotionEffects:[{ShowParticles:1b,Id:31,Duration:60,ShowIcon:1b,Amplifier:1b,Ambient:0b}],HideFlags:32,CustomPotionColor:32768,Potion:"minecraft:empty"} 3

item replace entity @e[type=minecraft:giant] weapon.mainhand with minecraft:stick{Enchantments:[{id:"minecraft:knockback",lvl:1}]}

execute as @e[type=pillager] run data merge entity @s {AbsorptionAmount:2f}

# execute as @e[type=skeleton,tag=!bower] run tag @s[tag=!sworder] add sworder
# execute as @e[type=zombie,tag=!tanker] run tag @s[tag=!stronger] add tanker
# execute as @e[type=spider,tag=!fish] run tag @s[tag=!spider] add spider
# harden team
execute as @e[type=spider,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..2}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","waterPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=spider,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..2}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","firePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=spider,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=3..5}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","waterPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=spider,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=3..5}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","electricPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=spider,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=6..9}] run data merge entity @s {Tags:[noreplaceentity],Health:28,HandItems:[{id:wooden_axe,Count:1}],HandDropChances:[0.00f],Attributes:[{Name:"generic.max_health",Base:28}]}

tp @e[type=spider,tag=!noreplaceentity] 0 -500 0
execute as @e[type=fireball,tag=!destroyer] at @s[tag=!nochange] run tag @s[tag=!highpower] add highpower

# execute as @e[type=creeper,tag=!fastfuse] run tag @s[tag=!biggerradius] add fastfuse
# execute as @e[type=creeper,tag=fastfuse] run data merge entity @s {Fuse:10,ExplosionRadius:2,Health:1,Attributes:[{Name:"generic.max_health",Base:2}]}
# execute as @e[type=creeper,tag=biggerradius] run data merge entity @s {powered:1,Fuse:60,ExplosionRadius:5,ArmorItems:[{id:leather_boots,tag:{Enchantments:[{id:blast_protection,lvl:255}]},Count:1},{id:leather_leggings,tag:{Enchantments:[{id:blast_protection,lvl:255}]},Count:1},{id:leather_chestplate,tag:{Enchantments:[{id:blast_protection,lvl:255}]},Count:1},{id:leather_helmet,tag:{Enchantments:[{id:blast_protection,lvl:255}]},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:6}]}
# # execute as @e[type=zombie,tag=stronger] run data merge entity @s {HandItems:[{id:stone_axe,tag:{Enchantments:[{id:sharpness,lvl:3}]},Count:1},{id:shield,Count:1}],HandDropChances:[0.25f,0.25f],ArmorItems:[{tag:{Enchantments:[{id:blast_protection,lvl:2}]},id:leather_boots,Count:1},{id:apple,Count:1},{id:gold_ingot,Count:1},{tag:{Enchantments:[{id:blast_protection,lvl:2}]},id:leather_helmet,Count:1}],ArmorDropChances:[0f,0.25f,0.25f,0f],Attributes:[{Name:"generic.max_health",Base:6}]}
# # execute as @e[type=zombie,tag=tanker] run data merge entity @s {HandItems:[{id:wooden_axe,tag:{Unbreakable:1,Enchantments:[{id:looting,lvl:3},{id:knockback,lvl:10}]},Count:1},{id:shield,Count:1}],HandDropChances:[0.0f,0.0f],ArmorItems:[{tag:{Enchantments:[{id:blast_protection,lvl:2}]},id:leather_boots,Count:1},{id:chainmail_leggings,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:2}]}},{id:chainmail_chestplate,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:2}]}},{tag:{Enchantments:[{id:blast_protection,lvl:2}]},id:leather_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:6}]}

execute as @e[type=creeper,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..2}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","firePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=creeper,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..2}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","electricPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=creeper,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=3..5}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","naturePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=creeper,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=3..5}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","electricPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=creeper,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=6}] run summon evoker ~ ~ ~ {Health:60,Attributes:[{Name:"generic.max_health",Base:60}]}
execute as @e[type=creeper,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=7..9}] run data merge entity @s {Tags:["noreplaceentity"],Health:30,powered:1b,Fuse:60}

# execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ {Color:3,Health:100,Tags:["small","noreplacearmor"],HandItems:[{id:iron_horse_armor,tag:{GetRelic:1},Count:1},{id:leather_horse_armor,tag:{GetRelic:1},Count:1}],HandDropChances:[0.10f,1.00f],ArmorItems:[{id:golden_horse_armor,tag:{GetRelic:1},Count:1},{id:diamond_leggings,tag:{Enchantments:[{id:"minecraft:protection",lvl:5}]},Count:1},{id:diamond_chestplate,tag:{Enchantments:[{id:"minecraft:protection",lvl:5}]},Count:1},{id:diamond_horse_armor,tag:{GetRelic:1},Count:1}],ArmorDropChances:[0.05f,0.00f,0.00f,0.01f],Attributes:[{Name:"generic.max_health",Base:100f}]}
# execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ {Color:4,Health:60,Tags:["small","noreplacearmor"],HandItems:[{id:iron_horse_armor,tag:{GetRelic:1},Count:1},{id:leather_horse_armor,tag:{GetRelic:1},Count:1}],HandDropChances:[0.02f,0.12f],ArmorItems:[{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:popped_chorus_fruit,tag:{ElectricCharge:1,display:{Name:'[{"text":"Electric Charge","italic":false,"color":"green"}]',Lore:['[{"text":"Used in the process of creating Electricity","italic":false,"color":"gray"}]']}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:60f}]}
# execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ {Color:4,Health:60,Tags:["small","noreplacearmor"],HandItems:[{id:iron_horse_armor,tag:{GetRelic:1},Count:1},{id:leather_horse_armor,tag:{GetRelic:1},Count:1}],HandDropChances:[0.02f,0.12f],ArmorItems:[{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:popped_chorus_fruit,tag:{ElectricCharge:1,display:{Name:'[{"text":"Electric Charge","italic":false,"color":"green"}]',Lore:['[{"text":"Used in the process of creating Electricity","italic":false,"color":"gray"}]']}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:60f}]}
# execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ {Color:4,Health:60,Tags:["small","noreplacearmor"],HandItems:[{id:iron_horse_armor,tag:{GetRelic:1},Count:1},{id:leather_horse_armor,tag:{GetRelic:1},Count:1}],HandDropChances:[0.02f,0.12f],ArmorItems:[{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:popped_chorus_fruit,tag:{ElectricCharge:1,display:{Name:'[{"text":"Electric Charge","italic":false,"color":"green"}]',Lore:['[{"text":"Used in the process of creating Electricity","italic":false,"color":"gray"}]']}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:60f}]}
# execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ {Color:4,Health:60,Tags:["small","noreplacearmor"],HandItems:[{id:iron_horse_armor,tag:{GetRelic:1},Count:1},{id:leather_horse_armor,tag:{GetRelic:1},Count:1}],HandDropChances:[0.02f,0.12f],ArmorItems:[{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:popped_chorus_fruit,tag:{ElectricCharge:1,display:{Name:'[{"text":"Electric Charge","italic":false,"color":"green"}]',Lore:['[{"text":"Used in the process of creating Electricity","italic":false,"color":"gray"}]']}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:60f}]}
# tp @e[type=skeleton_horse] 0 -500 0
execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ 
execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ 
execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ 
execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ 
execute as @e[type=skeleton_horse] at @s run summon minecraft:shulker ~ ~ ~ {Color:4,Health:60,Tags:["small","noreplacearmor"],HandItems:[{id:iron_horse_armor,tag:{GetRelic:1},Count:1},{id:leather_horse_armor,tag:{GetRelic:1},Count:1}],HandDropChances:[0.02f,0.12f],ArmorItems:[{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:popped_chorus_fruit,tag:{ElectricCharge:1,display:{Name:'[{"text":"Electric Charge","italic":false,"color":"green"}]',Lore:['[{"text":"Used in the process of creating Electricity","italic":false,"color":"gray"}]']}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:60f}]}
tp @e[type=skeleton_horse] 0 -500 0
execute as @e[type=zombie,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..3}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","icePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=zombie,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..3}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","electricPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=zombie,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=4..7}] run summon blaze
execute as @e[type=zombie,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=8..9}] run data merge entity @s {Tags:[noreplaceentity],Health:20,HandItems:[{id:diamond_sword,Count:1,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5}]}}],HandDropChances:[0.00f],Attributes:[{Name:"generic.max_health",Base:20}]}

#execute as @e[type=zombie,tag=stronger] at @s run summon blaze

tp @e[type=zombie,tag=!noreplaceentity] 0 -500 0

scoreboard players set @e[type=pillager] pillagerCount 0
execute as @e[type=pillager] at @s run execute at @e[type=pillager,distance=..3] run scoreboard players add @s pillagerCount 1
execute as @e[type=pillager,scores={pillagerCount=11..}] at @s run kill @s
execute at @a[tag=!spectating] run effect clear @e[distance=..24] levitation

execute unless entity @e[type=villager,tag=RMBdetection] run summon villager ~ ~ ~ {Age:-65535,Tags:["RMBdetection"],ActiveEffects:[{Id:14,Duration:1000}]}

#melt team
# summon iceandfire:lightning_dragon ~ ~ ~ {Brain: {memories: {}}, Attributes: [{Base: 35.0d, Name: "minecraft:generic.attack_damage"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 128.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.25d, Name: "minecraft:generic.movement_speed"}, {Base: 0.08d, Name: "forge:entity_gravity"}, {Base: 1.0d, Name: "forge:swim_speed"}, {Base: 1138.0d, Name: "minecraft:generic.max_health"}, {Base: 22.736d, Name: "minecraft:generic.armor"}], Invulnerable: 0b, Gender: 0b, AbsorptionAmount: 0.0f, AttackDecision: 1b, Hovering: 0b, FallDistance: 0.0f, InLove: 0, CanUpdate: 1b, FireBreathing: 1b, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, Items: [{Slot: 1b, id: "iceandfire:dragonarmor_dragonsteel_lightning_head", Count: 1b}, {Slot: 2b, id: "iceandfire:dragonarmor_dragonsteel_lightning_body", Count: 1b}, {Slot: 3b, id: "iceandfire:dragonarmor_dragonsteel_lightning_neck", Count: 1b}, {Slot: 4b, id: "iceandfire:dragonarmor_dragonsteel_lightning_tail", Count: 1b}], Tags: ["important", "noreplacearmor"], ModelDead: 0b, Air: 300s, CitadelData: {}, DeadProg: 0.0f, HandItems: [{}, {}], AgeTicks: 3444400, HasHomePosition: 0b, Variant: 3, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], Flying: 0b, Tackle: 0b, CrystalBound: 0b, CanPickUpLoot: 0b, HurtTime: 0s, Sitting: 0b, FallFlying: 0b, ForcedAge: 0, CustomPose: "", PortalCooldown: 0, Hunger: 10, DeathTime: 0s, TamedDragon: 0b, AgingDisabled: 0b, Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 1024f, LeftHanded: 0b, OnGround: 1b, DeathStage: 0, Rotation: [272.5816f, 0.0f], Sleeping: 0b, Command: 0, Fire: -1s, ArmorItems: [{}, {}, {}, {}]}


execute as @e[type=skeleton,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..2}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","firePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=skeleton,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=0..2}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","icePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1},{id:tipped_arrow,tag:{display:{Name:'[{"text":"Ice Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Ice on hit","italic":false,"color":"gray"}]']},CustomPotionEffects:[{ShowParticles:1b,Id:2,Duration:60,ShowIcon:1b,Amplifier:1b,Ambient:0b}],HideFlags:32,CustomPotionColor:65535,Potion:"minecraft:empty"},Count:2}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=skeleton,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=3..5}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","waterPillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=skeleton,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=3..5}] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","icePillager"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
execute as @e[type=skeleton,tag=!noreplaceentity] at @s if entity @p[scores={myrandom=6..9}] run data merge entity @s {Tags:[nonaturalres,noreplaceentity],Health:40,HandItems:[{id:bow,Count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:5}]}}],HandDropChances:[0.00f],Attributes:[{Name:"generic.max_health",Base:40}]}

# execute as @e[type=skeleton,tag=bower] run tag @s add bowerdone
# execute as @e[type=skeleton,tag=sworder] run tag @s add bowerdone
tp @e[type=skeleton,tag=!noreplaceentity] 0 -500 0
tp @e[type=creeper,tag=!noreplaceentity] 0 -500 0



execute as @e[type=witch,tag=!RMBdetection] at @s if entity @p[scores={myrandom=0..4}] run summon minecraft:villager
execute as @e[type=witch,tag=!RMBdetection] at @s if entity @p[scores={myrandom=5..9}] run summon ghast ~ 100 ~
tp @e[type=witch] 0 -500 0

execute as @e[type=stray] run data merge entity @s[tag=!bowerdone] {Health:22,HandItems:[{id:bow,Count:1,tag:{Enchantments:[{id:punch,lvl:5}]}},{id:tipped_arrow,Count:4,tag:{display:{Name:'[{"text":"Wet Arrow","italic":false,"color":"green"}]',Lore:['[{"text":"Applies Wet on hit","italic":false,"color":"gray"}]']},CustomPotionEffects:[{Id:27,Duration:80,ShowIcon:1b}]}}],HandDropChances:[0.00f,0.75f],ArmorItems:[{tag:{Enchantments:[{id:blast_protection,lvl:5}]},id:golden_boots,Count:1},{id:spectral_arrow,Count:1},{id:spectral_arrow,Count:1},{tag:{Enchantments:[{id:blast_protection,lvl:5}]},id:chainmail_helmet,Count:1}],ArmorDropChances:[0f,0.75f,0.75f,0f],Attributes:[{Name:"generic.max_health",Base:16}]}
execute as @e[type=stray] run tag @s add bowerdone


#execute as @e[type=skeleton] run data merge entity @s {HandItems:[{id:bow,tag:{Enchantments:[{id:power,lvl:5}]},Count:1},{id:arrow,Count:6}],HandDropChances:[0.00f,0.50f],ArmorItems:[{},{id:arrow,Count:6}],ArmorDropChances:[0f,0.50f],Attributes:[{Name:"generic.max_health",Base:6}]}
execute as @e[type=cave_spider] run data merge entity @s {HandItems:[{id:string,Count:8}],HandDropChances:[0.30f],ArmorItems:[{},{id:string,Count:8}],ArmorDropChances:[0f,0.30f],Attributes:[{Name:"generic.max_health",Base:1}]}

execute as @e[type=enderman,tag=!done] run data merge entity @s {Health:40,HandItems:[{id:ender_pearl,Count:2}],HandDropChances:[0.30f],ArmorItems:[{id:ender_pearl,Count:1},{id:ender_pearl,Count:1}],ArmorDropChances:[0.50f,0.50f],Attributes:[{Name:"generic.max_health",Base:40}]}
execute as @e[type=enderman,tag=!done] run tag @s add done

execute at @a[tag=!spectating] as @e[type=enderman,distance=..8] run data modify entity @s AngryAt set from entity @p UUID

# execute in the_end as @e[distance=..200,type=enderman] run data merge entity @s {Glowing:1b}
execute as @e[type=ender_dragon] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:500}]}
execute as @e[type=witch] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:6}]}
execute as @e[type=zombified_piglin] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:20}]}
execute as @e[type=piglin] at @s run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","exploder"],Health:24,HandItems:[{id:crossbow,tag:{Enchantments:[{id:quick_charge,lvl:3},{id:multishot,lvl:1}]},Count:1},{id:spectral_arrow,Count:2}],HandDropChances:[0.00f,1.00f],ArmorItems:[{id:spectral_arrow,Count:2},{},{},{id:spectral_arrow,Count:2}],ArmorDropChances:[0.50f,0f,0f,0.50f],Attributes:[{Name:"generic.max_health",Base:24f}]}
execute as @e[type=piglin_brute] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:12}]}
execute as @e[type=hoglin] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:12}]}
execute as @e[type=hoglin] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:12}]}
execute as @e[type=bee] run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:1}]}
execute as @e[type=fireball,tag=highpower] run data merge entity @s[tag=!nochange] {ExplosionPower:8}
tp @e[type=piglin] 0 -500 0

scoreboard players add @a event2 1
execute as @a[tag=!spectating] if entity @s[scores={wildcooldown=1..}] run scoreboard players remove @s wildcooldown 1
execute as @a[tag=!spectating] if entity @s[scores={spawncooldown=1..}] run scoreboard players remove @s spawncooldown 1


execute as @a[tag=!spectating] if entity @s[scores={cwilddown=1..}] run scoreboard players remove @s cwilddown 1


scoreboard players add @a noslowmining 0
execute as @a[tag=!spectating] if entity @s[scores={noslowmining=0}] run effect give @s regeneration 2 1 true
execute as @a[tag=!spectating] if entity @s[scores={noslowmining=0}] run tellraw @s[tag=dev-feat] {"text":"Regening","color":"light_purple"}
execute as @a[tag=!spectating] if entity @s[scores={noslowmining=..0}] run scoreboard players set @s noslowmining 300

scoreboard players remove @a noslowmining 1

execute as @a[tag=!spectating] if entity @s[scores={thirst=..1}] run damage @s 1 dry_out

scoreboard players set @a die. 0
execute as @a[tag=!spectating] if entity @s at @s if block ~ ~ ~ water run effect give @s hunger 3 0 true

bossbar set minecraft:updateinfo players @a
bossbar set minecraft:explore players @a

execute as @a[tag=!spectating] if entity @s[scores={die.=1..}] unless entity @s[nbt={Fire:-20s}] run tellraw @a [{"selector":"@s","color": "light_purple"},{"text":" burned to death","color":"red"}]

execute as @a[tag=!spectating] if entity @s[nbt={ActiveEffects:[{Id:26b}]}] run tag @s add 200stamina
execute as @a[tag=!spectating] if entity @s[nbt=!{ActiveEffects:[{Id:26b}]}] run tag @s remove 200stamina

tag @e remove active
execute at @a[tag=!spectating] run tag @e[distance=..16] add active


#execute as @a[tag=!spectating] if entity @s at @s run execute as @e[type=pillager] run data merge entity @s {CustomNameVisible:0b}
execute as @a[tag=!spectating] if entity @s[tag=BedrockUser] at @s run execute as @e[type=pillager,distance=..16,tag=firePillager] run data merge entity @s {CustomName:'[{"text":"Fire","color":"gold"},{"text":" Shooter","color":"gray"}]',CustomNameVisible:1b}
execute as @a[tag=!spectating] if entity @s[tag=BedrockUser] at @s run execute as @e[type=pillager,distance=..16,tag=waterPillager] run data merge entity @s {CustomName:'[{"text":"Water","color":"blue"},{"text":" Shooter","color":"gray"}]',CustomNameVisible:1b}
execute as @a[tag=!spectating] if entity @s[tag=BedrockUser] at @s run execute as @e[type=pillager,distance=..16,tag=icePillager] run data merge entity @s {CustomName:'[{"text":"Ice","color":"aqua"},{"text":" Shooter","color":"gray"}]',CustomNameVisible:1b}
execute as @a[tag=!spectating] if entity @s[tag=BedrockUser] at @s run execute as @e[type=pillager,distance=..16,tag=exploder] run data merge entity @s {CustomName:'[{"text":"Explosion","color":"yellow"},{"text":" Shooter","color":"gray"}]',CustomNameVisible:1b}


execute as @a[tag=!spectating] if entity @s at @s if block ~ ~ ~1 structure_block run scoreboard players add @s[scores={thirst=..19}] thirst 1
execute as @a[tag=!spectating] if entity @s at @s if block ~ ~ ~-1 structure_block run scoreboard players add @s[scores={thirst=..19}] thirst 1
execute as @a[tag=!spectating] if entity @s at @s if block ~-1 ~ ~ structure_block run scoreboard players add @s[scores={thirst=..19}] thirst 1
execute as @a[tag=!spectating] if entity @s at @s if block ~1 ~ ~ structure_block run scoreboard players add @s[scores={thirst=..19}] thirst 1
execute as @a[tag=!spectating] if entity @s at @s if block ~ ~ ~1 structure_block run effect give @s[scores={thirst=20..}] regeneration 3 0
execute as @a[tag=!spectating] if entity @s at @s if block ~ ~ ~-1 structure_block run effect give @s[scores={thirst=20..}] regeneration 3 0
execute as @a[tag=!spectating] if entity @s at @s if block ~-1 ~ ~ structure_block run effect give @s[scores={thirst=20..}] regeneration 3 0
execute as @a[tag=!spectating] if entity @s at @s if block ~1 ~ ~ structure_block run effect give @s[scores={thirst=20..}] regeneration 3 0

scoreboard players remove @a[scores={cheatcode.cd=1..}] cheatcode.cd 1
scoreboard players add @a cheatcode.cd 0

tag @e[tag=!ondeath] add ondeath


item replace entity @e[tag=!noreplacearmor] armor.chest with diamond_chestplate{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}
item replace entity @e[tag=!noreplacearmor] armor.head with iron_helmet{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}
item replace entity @e[tag=!noreplacearmor] armor.legs with diamond_leggings{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}
item replace entity @e[tag=!noreplacearmor] armor.feet with golden_boots{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}
execute as @e[tag=!noreplacearmor] run data merge entity @s {ArmorDropChances:[0.0f,1.0f,0.0f,0.0f]}

tag @e[tag=!noreplacearmor] add noreplacearmor

execute as @e[type=sheep] run data merge entity @s {ArmorItems:[{id:"minecraft:white_wool",Count:2}],ArmorDropChances:[1.00f]}

# give @a[tag=!BDAY] golden_sword{Unbreakable:1,WeaponVersion:4,Sword:1,RainbowAspect:1,display:{Name:'[{"text":"[EVENT] Kevcore\'s Sword V.2","italic":false}]',Lore:['[{"text":"To celebrate Kevcore\'s birthday!"},{"text":"","italic":false}]','[{"text":"","italic":false}]','[{"text":"Weapon Stat: ","italic":false,"color":"light_purple"},{"text":"Rainbow Aspect","color":"aqua"},{"text":"","color":"dark_purple"}]','[{"text":"When dealing DMG with the sword:","italic":false,"color":"gray"}]','[{"text":"- Applies a random element","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ultimate (sneak + right click):","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"- Summon a Radiation Lightning to entities between","italic":false,"color":"gray"}]','[{"text":"3 to 7 blocks away from the player","italic":false,"color":"gray"},{"text":".","italic":false,"color":"dark_purple"}]']}}
# give @a[tag=!BDAY] iron_sword{Unbreakable:1,WeaponVersion:4,Sword:1,WindAspect:1,display:{Name:'[{"text":"[EVENT]","italic":false,"color":"light_purple"},{"text":" Windy Sword","color":"green"}]',Lore:['[{"text":"Wind element doesn\'t exist... or will it?"}]','[{"text":"Part of Kevcore\'s B-Day Items.","italic":true},{"text":"","italic":false}]','[{"text":"","italic":false}]','[{"text":"Weapon Stat: ","italic":false,"color":"light_purple"},{"text":"Wind Aspect","color":"aqua"},{"text":"","color":"dark_purple"}]','[{"text":"When dealing DMG with the sword:","italic":false,"color":"gray"}]','[{"text":"- Applies ","italic":false,"color":"gray"},{"text":"Whirl","color":"#66ffcc"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Whirl","italic":false,"color":"#66ffcc"},{"text":": If the entity has:","italic":false,"color":"gray"}]','[{"text":"- ","italic":false,"color":"gray"},{"text":"An element","color":"white"},{"text":": All entities within 5m of the entity hit","color":"gray"}]','[{"text":"will be hit with that element for 1.5 DMG, increasing by","italic":false,"color":"gray"}]','[{"text":"0.5 for each ATK level (up to 4)","italic":false,"color":"gray"}]','[{"text":"- ","italic":false,"color":"gray"},{"text":"Freeze","color":"aqua"},{"text":": All entities within 5m of the entity hit will","color":"gray"}]','[{"text":"be ","italic":false,"color":"gray"},{"text":"frozen ","color":"aqua"},{"text":"for 1m, and increases Freeze time by 0.25s","color":"gray"}]','[{"text":"- ","italic":false,"color":"gray"},{"text":"Burning","color":"gold"},{"text":": All entities within 5m of the entity hit","color":"gray"}]','[{"text":"will be set on fire for 1s, and increases Burning","italic":false,"color":"gray"}]','[{"text":"time by 0.3s","italic":false,"color":"gray"}]','[{"text":"- ","italic":false,"color":"gray"},{"text":"Electrified","color":"yellow"},{"text":": The entity will be dealt with 6 DMG,","color":"gray"}]','[{"text":"increasing by 1.5 for each EM level (up to 4)","italic":false,"color":"gray"}]','[{"text":"- ","italic":false,"color":"gray"},{"text":"Superconduct","color":"light_purple"},{"text":": All entities within 5m of the entity hit","color":"gray"}]','[{"text":"will be superconducted for 2.5s","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ultimate (sneak + right click):","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Entities within 5m of the player will be teleported in","italic":false,"color":"gray"}]','[{"text":"front of the player, and also be applied with Crisp.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Passive:","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Increases DEF when holding the sword by 1","italic":false,"color":"gray"}]']}} 1
# give @a[tag=!BDAY] enchanted_golden_apple 1
# give @a[tag=!BDAY] experience_bottle 32
# tellraw @a[tag=!BDAY] {"text": "\nEVENT:\nYou obtained event-exclusive items:\n  + Kevcore's Sword V.2\n  + Windy Sword\n  + 1 Enchanted Golden Apple\n  + 32 Experience Bottles","color": "green"}
# tag @a add BDA

execute as @e[nbt={NoGravity:1b},tag=!nogravity] run data merge entity @s {NoGravity:0b}
 

# item replace entity @e[type=ender_dragon] armor.chest with netherite_chestplate{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:29}]}
# item replace entity @e[type=ender_dragon] armor.head with netherite_helmet{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:29}]}
# item replace entity @e[type=ender_dragon] armor.legs with netherite_leggings{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:29}]}
# item replace entity @e[type=ender_dragon] armor.feet with netherite_boots{RespawnedItem:1,Enchantments:[{id:"minecraft:blast_protection",lvl:29}]}

# execute as @e[type=minecraft:ender_dragon] run data merge entity @s {Health:1000}

#execute as @e[type=dragon_fireball,tag=!stop] store result entity @s Motion[0] double 1 run data get entity @s Motion[0] 100000
#execute as @e[type=dragon_fireball,tag=!stop] store result entity @s Motion[1] double 1 run data get entity @s Motion[1] 100000
#execute as @e[type=dragon_fireball,tag=!stop] store result entity @s Motion[2] double 1 run data get entity @s Motion[2] 100000

tag @e[type=dragon_fireball] add stop

execute as @e[type=minecraft:ender_dragon,tag=CustomPetDragon] run data merge entity @s {DragonPhase:0}
#execute as @e[type=minecraft:ender_dragon,tag=!CustomPetDragon] run data merge entity @s {DragonPhase:8}

execute as @a[tag=!spectating] if entity @s[tag=BedrockUser] run function cmd:armorstat

execute in the_nether run gamerule keepInventory true
execute in overworld run gamerule keepInventory true

scoreboard players add @a skills.cd 0
execute as @a[tag=!spectating] if entity @s[scores={skills.cd=1..}] run scoreboard players remove @s skills.cd 1
execute as @a[tag=!spectating] if entity @s[scores={skills.cd=..-1}] run scoreboard players set @s skills.cd 1

# execute as @a[tag=!spectating] if entity @s[gamemode=creative] run scoreboard players set @s stamina 100
# execute as @a[tag=!spectating] if entity @s[gamemode=spectator] run scoreboard players set @s stamina 100

effect give @e[type=phantom] strength 1000 49 true

execute positioned 0 -500 0 run kill @e[distance=..50]
execute in the_nether positioned 0 -500 0 run kill @e[distance=..50]

item replace entity @e[type=minecraft:pillager,tag=freezePillager] weapon.offhand with tipped_arrow{ReactionArrow:1,CustomPotionColor:36095,display:{Name:'[{"text":"Radiation Arrow","italic":false,"color":"aqua"}]'},HideFlags:32,CustomPotionEffects:[{Id:2,Duration:10},{Id:27,Duration:10}]} 1


scoreboard players set @a[tag=easyMode,scores={combatLvl=0}] combatLvl 6
scoreboard players set @a[tag=easyMode,scores={axesLvl=0}] axesLvl 6
scoreboard players set @a[tag=easyMode,scores={pickaxesLvl=0}] pickaxesLvl 6
scoreboard players set @a[tag=easyMode,scores={gatheringLvl=0}] gatheringLvl 6
scoreboard players set @a[tag=easyMode,scores={firstaidLvl=0}] gatheringLvl 6
scoreboard players set @a[tag=easyMode,scores={defenseLvl=0}] gatheringLvl 6


## FIGURE out how to add stats
# The reason why a "artemp" doesn't exist is becase the ARatk, ARdef, etc can be useful like "DEF stack levels: 3"

effect give @a[scores={pickaxesLvl=6..7}] haste 1 0 true
effect give @a[scores={pickaxesLvl=8..9}] haste 1 1 true
effect give @a[scores={pickaxesLvl=10..}] haste 1 2 true


#asd 

execute as @e[type=armor_stand,tag=randomGen,limit=1] at @s[tag=raining] in overworld positioned 1000 200 1000 run execute as @e[type=!armor_stand,distance=32..] run effect give @s[type=!shulker] unluck 8 0 true


scoreboard players add @e reactionICD 0

scoreboard players set @a[gamemode=creative] stamina 100

scoreboard objectives add superconduct dummy
scoreboard players add @e superconduct 0
effect give @e[type=!player,scores={superconduct=0},tag=!nonaturalres] resistance 10 0 true

effect give @e[type=iron_golem] conduit_power 1 0 true
effect give @e[type=iron_golem,scores={superconduct=0}] resistance 10 3 true

effect give @e[type=giant,scores={superconduct=0}] resistance 10 3 true
effect give @e[type=shulker,scores={superconduct=0}] resistance 10 3 true
effect give @e[type=enderman,scores={superconduct=0}] resistance 10 3 true
effect give @e[type=blaze,scores={superconduct=0}] resistance 10 2 true
effect give @e[type=player,scores={superconduct=0}] resistance 10 2 true


execute as @a run scoreboard players operation @s dps += @s dpstemp
execute as @a run scoreboard players operation @s dps /= 2 intnumbers

execute as @a unless score @s dps <= @s highestdps run tellraw @s [{"text": "New highest DPS: ","color": "gold"},{"score":{"name": "@s","objective": "dps"}}]
execute as @a unless score @s dps <= @s highestdps run scoreboard players operation @s highestdps = @s dps

scoreboard players set @a dpstemp 0

execute as @a run scoreboard players operation @s dpsp += @s dpsptemp
execute as @a run scoreboard players operation @s dpsp /= 20 intnumbers
scoreboard players set @a dpsptemp 0
# noAI performance increase FIX (AIReduced by Kevcore)
# execute at @a[tag=!spectating] as @e[tag=noAIpi,distance=..24] unless entity @s[scores={noAITime=1..}] run tellraw @a[tag=debuger] [{"text": "[AIReducer] Disabled AI for ","color": "gray"},{"selector":"@s"},{"text": "","color": "gray"}]
# execute at @a[tag=!spectating] as @e[tag=noAIpi,distance=..24] unless entity @s[scores={noAITime=1..}] run data merge entity @s {NoAI:0b}
# execute at @a[tag=!spectating] as @e[tag=noAIpi,distance=..24] unless entity @s[scores={noAITime=1..}] run tag @s remove noAIpi

# clear any residental lag
kill @e[type=interaction,tag=itempickup]
execute as @e[type=interaction,tag=reviveuser] run scoreboard players add @s timeInSec 1
execute as @e[type=interaction,tag=reviveuser,scores={timeInSec=25..}] run kill @s
# electrifie
execute as @e[scores={electrified=1..}] run function cmd:electrifieddmg

# #nether 
# execute in the_nether at @e[type=zombified_piglin] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","exploder"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
# execute in the_nether at @e[type=zombified_piglin] run summon minecraft:pillager ~ ~1 ~ {Tags:["noreplacearmor","exploder"],Health:32,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:32f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1},{id:chainmail_helmet,tag:{RespawnedItem:1},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f,1.0f]}
# execute in the_nether as @e[type=zombified_piglin] run tp @s 0 -500 0


execute in the_nether if entity @a[distance=0..] run function cmd:nethermobs
execute in the_nether as @a[tag=!innether,distance=0..] at @s if block ~ ~ ~ nether_portal run function cmd:netherready
execute in the_nether run tag @a[distance=0..] add innether
execute in overworld run tag @a[distance=0..] remove innether


execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 oak_sign{front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"gray","text":"[Trade]"}', '{"text":""}', '{"text":""}', '{"color":"red","text":"Incompleted"}']}, is_waxed: 1b} replace oak_sign{front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"gray","text":"[Trade]"}', '{"text":""}', '{"text":""}', '{"color":"red","text":"Incompleted"}']}, is_waxed: 0b, back_text: {has_glowing_text: 0b, color: "black", messages: ['{"text":""}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute at @a[tag=!spectating] run fill ~5 -63 ~5 ~-5 -59 ~-5 lava replace obsidian
execute at @a[tag=!spectating] run fill ~5 1 ~5 ~-5 5 ~-5 lava replace gravel
execute at @a[tag=!spectating] run fill ~5 -57 ~5 ~-5 -54 ~-5 magma_block replace #base_stone_overworld
execute at @a[tag=!spectating] run fill ~5 6 ~5 ~-5 25 ~-5 magma_block replace #base_stone_nether



## Replace ores
execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 gold_ore replace #redstone_ores
execute at @a run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 stone_button[face=floor,powered=false] replace grass

execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace enchanting_table

scoreboard players remove @a[scores={staminafullness=1..}] staminafullness 1

## EVENT
execute as @a[scores={e-goldores=30..},tag=!e-goldores] run tellraw @s {"text": "Completed challenge: Mine 30 Gold ores\nReward: +2 Relic Enhancers","color": "green"}
execute as @a[scores={e-goldores=30..},tag=!e-goldores] run give @s gunpowder{RelicEnhancer:1,display:{Name:'[{"text":"Relic Enhancer","italic":false,"color":"gold","bold":true}]',Lore:['[{"text":"When thrown together with a relic, the relic","italic":false,"color":"gray"}]','[{"text":"receives 1 random stat.","italic":false,"color":"gray"}]','[{"text":"If the relic already has more than 4 of the random","italic":false,"color":"gray"}]','[{"text":"stat, the relic gains +1 SP Regeneration","italic":false,"color":"gray"}]']},Enchantments:[{id:"minecraft:power",lvl:1}],HideFlags:1} 2
execute as @a[scores={e-goldores=30..},tag=!e-goldores] run tag @s add e-goldores

execute as @a[scores={e-stone=640..},tag=!e-stone] run tellraw @s {"text": "Completed challenge: Mine 640 stone\nReward: +2 Relic Enhancers","color": "green"}
execute as @a[scores={e-stone=640..},tag=!e-stone] run give @s gunpowder{RelicEnhancer:1,display:{Name:'[{"text":"Relic Enhancer","italic":false,"color":"gold","bold":true}]',Lore:['[{"text":"When thrown together with a relic, the relic","italic":false,"color":"gray"}]','[{"text":"receives 1 random stat.","italic":false,"color":"gray"}]','[{"text":"If the relic already has more than 4 of the random","italic":false,"color":"gray"}]','[{"text":"stat, the relic gains +1 SP Regeneration","italic":false,"color":"gray"}]']},Enchantments:[{id:"minecraft:power",lvl:1}],HideFlags:1} 2
execute as @a[scores={e-stone=640..},tag=!e-stone] run tag @s add e-stone


execute as @a[scores={e-reactantcore=1},tag=!e-rc] run tellraw @s {"text": "Completed challenge: Use a reactant core\nReward: +2 Relic Enhancers","color": "green"}
execute as @a[scores={e-reactantcore=1},tag=!e-rc] run give @s gunpowder{RelicEnhancer:1,display:{Name:'[{"text":"Relic Enhancer","italic":false,"color":"gold","bold":true}]',Lore:['[{"text":"When thrown together with a relic, the relic","italic":false,"color":"gray"}]','[{"text":"receives 1 random stat.","italic":false,"color":"gray"}]','[{"text":"If the relic already has more than 4 of the random","italic":false,"color":"gray"}]','[{"text":"stat, the relic gains +1 SP Regeneration","italic":false,"color":"gray"}]']},Enchantments:[{id:"minecraft:power",lvl:1}],HideFlags:1} 2
execute as @a[scores={e-reactantcore=1},tag=!e-rc] run tag @s add e-rc

execute as @a[scores={e-dmg=50000..},tag=!e-dmg] run tellraw @s {"text": "Completed challenge: Deal over 50K DMG from physical damage or reactions\nReward: +2 Relic Enhancers","color": "green"}
execute as @a[scores={e-dmg=50000..},tag=!e-dmg] run trigger type set 258025800
execute as @a[scores={e-dmg=50000..},tag=!e-dmg] run tag @s add e-dmg