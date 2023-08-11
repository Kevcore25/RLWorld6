execute as @e[type=creeper,tag=!fastfuse] run tag @s[tag=!biggerradius] add biggerradius
execute as @e[type=skeleton,tag=!bower] run tag @s[tag=!sworder] add bower
execute as @e[type=zombie,tag=!tanker] run tag @s[tag=!stronger] add stronger
execute as @e[type=spider,tag=!fish] run tag @s[tag=!spider] add fish
execute as @e[type=fireball,tag=!destroyer] at @s[tag=!nochange] run tag @s[tag=!highpower] add destroyer

schedule function cmd:sec2 1s replace

#execute as @e[type=minecraft:ender_dragon,tag=CustomPetDragon] run data merge entity @s {Motion:[0.0,-2.01,0.0]}


#execute in the_nether run gamerule keepInventory false
#execute in overworld run gamerule keepInventory false

## TEMPERATURE

scoreboard objectives add temperature dummy
scoreboard objectives add temperature. dummy 

scoreboard players add @a temperature 0




tag @a remove inWarmBiome
tag @a remove inColdBiome

execute as @a at @s if biome ~ ~ ~ #snow_golem_melts run tag @s add inWarmBiome
execute as @a at @s if biome ~ ~ ~ #spawns_cold_variant_frogs run tag @s add inColdBiome

execute as @a[scores={temperature=..0},tag=inWarmBiome] run scoreboard players add @s temperature. 750
execute as @a[scores={temperature=1..10},tag=inWarmBiome] run scoreboard players add @s temperature. 250
execute as @a[scores={temperature=11..24},tag=inWarmBiome] run scoreboard players add @s temperature. 50

execute as @a[scores={temperature=21..},tag=inColdBiome] run scoreboard players remove @s temperature. 1500
execute as @a[scores={temperature=10..20},tag=inColdBiome] run scoreboard players remove @s temperature. 750
execute as @a[scores={temperature=0..9},tag=inColdBiome] run scoreboard players remove @s temperature. 300
execute as @a[scores={temperature=-15..-1},tag=inColdBiome] run scoreboard players remove @s temperature. 50


execute as @a[scores={temperature=21..},nbt={ActiveEffects:[{Id:2}]}] run scoreboard players remove @s temperature. 5000
execute as @a[scores={temperature=10..20},nbt={ActiveEffects:[{Id:2}]}] run scoreboard players remove @s temperature. 1000
execute as @a[scores={temperature=0..9},nbt={ActiveEffects:[{Id:2}]}] run scoreboard players remove @s temperature. 600
execute as @a[scores={temperature=..-1},nbt={ActiveEffects:[{Id:2}]}] run scoreboard players remove @s temperature. 100

execute as @a[scores={temperature=10..},nbt={ActiveEffects:[{Id:27}]}] run scoreboard players remove @s temperature. 800
execute as @a[scores={temperature=0..9},nbt={ActiveEffects:[{Id:27}]}] run scoreboard players remove @s temperature. 300


execute as @a[scores={temperature=..0},nbt={ActiveEffects:[{Id:32}]}] run scoreboard players add @s temperature. 3000
execute as @a[scores={temperature=1..10},nbt={ActiveEffects:[{Id:32}]}] run scoreboard players add @s temperature. 1000
execute as @a[scores={temperature=11..},nbt={ActiveEffects:[{Id:32}]}] run scoreboard players add @s temperature. 300

execute as @a at @s if biome ~ ~ ~ #is_nether run scoreboard players add @s temperature. 200
execute as @a[tag=!spectating] at @s[tag=!cf] at @s unless entity @s[nbt={Fire:-20s}] unless entity @s[nbt={Fire:0s}] unless block ~ ~ ~ water run scoreboard players add @s temperature. 1000

# temperature

execute as @a[nbt={TicksFrozen:140}] run scoreboard players remove @s temperature. 1000


execute as @a[scores={temperature.=..-1000}] run scoreboard players remove @s temperature 1
execute as @a[scores={temperature.=..-1000}] run scoreboard players add @s temperature. 1000
execute as @a[scores={temperature.=1000..}] run scoreboard players add @s temperature 1
execute as @a[scores={temperature.=1000..}] run scoreboard players remove @s temperature. 1000


# dying calculations

# execute as @a[scores={temperature=..-10}] run scoreboard players set @s currentStatus 102
# execute as @a[scores={temperature=19..}] run scoreboard players set @s currentStatus 101

# execute as @a[scores={temperature=..-10}] run damage @s 1 freeze
# execute as @a[scores={temperature=..-12}] run damage @s 3 freeze
# execute as @a[scores={temperature=..-15}] run damage @s 6 freeze
# execute as @a[scores={temperature=16..}] run damage @s 0.01 on_fire
# execute as @a[scores={temperature=19..}] run damage @s 1 on_fire
# execute as @a[scores={temperature=23..}] run damage @s 6 on_fire


## WAYPOINTS
execute as @e[type=armor_stand,tag=waypointEntity] at @s unless block ~ ~-0.1 ~ stone_bricks run forceload remove ~ ~
execute as @e[type=armor_stand,tag=waypointEntity] at @s unless block ~ ~-0.1 ~ stone_bricks run kill @s

## more items...
execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:cocoa_beans"}}] at @s if block ~ ~-0.1 ~ structure_block run execute as @e[type=item,nbt={Item:{id:"minecraft:sugar"}},distance=..0.5] at @s if block ~ ~-0.1 ~ structure_block run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Medium Energy Bar ","italic":false,"color":"light_purple"},{"text":"(Click)","color":"gray"}]',Lore:['[{"text":"Restores 100 stamina","italic":false,"color":"aqua"}]']},Enchantments:[{id:"infinity",lvl:1}],HideFlags:1}}}
execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:cocoa_beans"}},distance=..0.5] run kill @s

execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:glass"}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..0.5] run data merge entity @s {Item:{id:"minecraft:lingering_potion",tag:{HideFlags:32,Duration:1,CustomPotionEffects:[{Id:27,Duration:1}],CustomPotionColor:2171169,display:{Name:'[{"text":"Instant Bomb","color":"green","italic": false}]'}}}}
execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:lingering_potion"}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:glass"}},distance=..0.5] run kill @s

execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:stick"}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:sugar"}},distance=..0.5] run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Small Energy Bar ","italic":false,"icolor":"light_purple"},{"text":"(Click)","color":"gray"}]',Lore:['[{"text":"Restores 20 stamina, up to 100","italic":false,"color":"aqua"}]']},Enchantments:[{id:"infinity",lvl:1}],HideFlags:1}}}
execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..0.5] run kill @s
## WAYPOINTS
execute at @a[tag=!spectating] as @e[type=item,distance=..24,nbt={Item:{tag:{Waypoint:1}}}] at @s if block ~ ~-0.1 ~ stone_bricks align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Tags:["important","waypointEntity"],Marker:1b,CustomName:'{"text":"Waypoint","color": "yellow"}',CustomNameVisible:1b}
execute at @a[tag=!spectating] as @e[type=item,distance=..24,nbt={Item:{tag:{Waypoint:1}}}] at @s if block ~ ~-0.1 ~ stone_bricks run scoreboard players operation @e[type=armor_stand,distance=..0.5,tag=waypointEntity] tpa.pid = @p tpa.pid
execute at @a[tag=!spectating] as @e[type=item,distance=..24,nbt={Item:{tag:{Waypoint:1}}}] at @s if block ~ ~-0.1 ~ stone_bricks run kill @s

execute as @a[nbt={SelectedItem:{id:"minecraft:lava_bucket"}},gamemode=survival,scores={myrandom=0..2}] at @s run setblock ~ ~ ~ lava destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:lava_bucket"}},gamemode=survival,scores={myrandom=0..2}] at @s run tellraw @s {"text":"Oh no! Your lava bucket melted!","color": "red"}
execute as @a[nbt={SelectedItem:{id:"minecraft:lava_bucket"}},gamemode=survival,scores={myrandom=0..2}] at @s run item replace entity @s weapon.mainhand with iron_nugget 15

## ITESM
execute as @e[type=item,nbt={Item:{id:"minecraft:flint",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:tall_grass",Count:1b}},distance=..0.5] run data merge entity @s {Item:{id:"minecraft:stone_axe",tag:{WeaponVersion:4,FlintHatchet:1,NoEnch:1,Damage:99,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123316,11496,19326,-22992]},{AttributeName:"generic.attack_speed",Amount:-2.6,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-123316,11596,19326,-23192]}],display:{Name:'[{"text":"Flint Hatchet","italic":false}]'},Enchantments:[{id:sharpness,lvl:1}]}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:stone_axe",Count:1b,tag:{FlintHatchet:1}}}] at @s run kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:stick",Count:2b}}]
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_axe",Count:1b,tag:{FlintHatchet:1}}}] at @s run kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:tall_grass",Count:1b}}]

execute as @e[type=item,nbt={Item:{id:"minecraft:flint",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..0.5] run data merge entity @s {Item:{id:"minecraft:stone_sword",tag:{FlintSword:1,NoEnch:1,Damage:99,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123316,11496,19326,-22992]},{AttributeName:"generic.attack_speed",Amount:-1.8,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-123316,11596,19326,-23192]}],display:{Name:'[{"text":"Flint Knife","italic":false}]'},Enchantments:[{id:sharpness,lvl:2}]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_sword",Count:1b,tag:{FlintSword:1}}}] at @s run kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:stick",Count:1b}}]

## Bombs
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27}]}] at @s run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:4,Fuse:0,ignited:1,CustomName:'[{"text":"Bomb"}]'}
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27}]}] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 2.5 2.5 2.5 0.01 500 normal
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27}]}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 2.5 2.5 2.5 0.01 500 normal
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27}]}] at @s run kill @s









## relic domain

scoreboard players set amount challenges 0
execute positioned 1000 200 1000 as @e[distance=..50,type=!player,tag=relicChallenge] run scoreboard players add amount challenges 1
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 run tellraw @s "[RELIC CHALLENGE] You completed the challenge! Yay!"


execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 run xp add @s 60 levels
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 run execute in the_end run tp @s 1000 100 1000
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 run scoreboard players set @s temperature 0
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 run effect give @s instant_health 1 15
# REWARDS
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 1 run give @s leather_horse_armor{GetRelic:1}
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 1 if entity @s[scores={myrandom=0..2}] run give @s iron_horse_armor{GetRelic:1}

execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 2 run give @s leather_horse_armor{GetRelic:1}
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 2 at @s run give @s iron_horse_armor{GetRelic:1}
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 2 if entity @s[scores={myrandom=0..2}] at @s run give @s golden_horse_armor{GetRelic:1}


execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 3 at @s run give @s iron_horse_armor{GetRelic:1}
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 3 at @s run give @s golden_horse_armor{GetRelic:1}
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 3 if entity @s[scores={myrandom=0..2}] at @s run give @s diamond_horse_armor{GetRelic:1}



execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 4 if entity @s at @s run give @s golden_horse_armor{GetRelic:1}
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 4 if entity @s at @s run give @s diamond_horse_armor{GetRelic:1}

execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 if score reward challenges matches 4 if entity @s[scores={myrandom=9}] at @s run give @s gunpowder{RelicEnhancer:1,display:{Name:'[{"text":"Relic Enhancer","italic":false,"color":"gold","bold":true}]',Lore:['[{"text":"When thrown together with a relic, the relic","italic":false,"color":"gray"}]','[{"text":"receives 1 random stat.","italic":false,"color":"gray"}]','[{"text":"If the relic already has more than 4 of the random","italic":false,"color":"gray"}]','[{"text":"stat, the relic gains +1 SP Regeneration","italic":false,"color":"gray"}]']},Enchantments:[{id:"minecraft:power",lvl:1}],HideFlags:1} 1

# end of reards
execute if score amount challenges matches 0 as @a if score @s tpa.pid = user challenges if score started challenges matches 1 run scoreboard players set started challenges 0

execute positioned 1000 200 1000 run gamemode survival @a[gamemode=adventure,distance=36..]
execute positioned 1000 200 1000 run gamemode adventure @a[gamemode=survival,distance=..35]
execute positioned 1000 200 1000 at @a[gamemode=adventure,distance=..35] if block ~ ~-1 ~ red_stained_glass run damage @p 10 out_of_world


# duper
execute at @a[tag=!spectating] as @e[type=item,nbt={Item:{tag:{Duper:1}}},distance=..8] at @s run data modify entity @s Item set from entity @e[type=item,distance=..0.5,sort=nearest,limit=1,nbt=!{Item:{tag:{Duper:1}}}] Item