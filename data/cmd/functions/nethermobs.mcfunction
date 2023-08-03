


execute if entity @r[scores={myrandom=0..1}] at @e[type=zombified_piglin] run summon minecraft:pillager ~ ~1 ~ {Tags:["meltPillager"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute if entity @r[scores={myrandom=2..3}] at @e[type=zombified_piglin] run summon minecraft:pillager ~ ~1 ~ {Tags:["radiationPillager"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute if entity @r[scores={myrandom=4..5}] at @e[type=zombified_piglin] run summon minecraft:vindicator ~ ~1 ~ {HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute if entity @r[scores={myrandom=6..7}] at @e[type=zombified_piglin] run summon minecraft:blaze ~ ~1 ~ {Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute if entity @r[scores={myrandom=8..9}] at @e[type=zombified_piglin] run summon minecraft:shulker ~ ~1 ~ {Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
tp @e[type=zombified_piglin] 0 -500 0

execute if entity @r[scores={myrandom=0..4}] as @e[type=hoglin,distance=0..] run data merge entity @s[tag=!donen] {Health:500,Attributes:[{Name:"generic.max_health",Base:500f}],HandItems:[{id:diamond_axe,Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f]}
execute if entity @r[scores={myrandom=5..9}] at @e[type=hoglin,distance=0..,tag=!donen] run summon minecraft:ravager ~ ~1 ~ {HandItems:[{id:diamond_axe,Count:1b}],HandDropChances:[0.00f,0.00f],Health:400,Attributes:[{Name:"generic.max_health",Base:400f}]}
execute if entity @r[scores={myrandom=5..9}] as @e[type=hoglin,distance=0..,tag=!donen] run tp @s 0 -500 0

execute as @e[tag=!important,distance=0..,type=!shulker_bullet] run data merge entity @s[tag=!donen] {Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @e[tag=!important,distance=0..,type=!shulker_bullet] run effect give @s fire_resistance infinite 0 true

tag @e[tag=!important,distance=0..,type=!shulker_bullet] add donen


item replace entity @e[type=minecraft:pillager,tag=meltPillager] weapon.offhand with tipped_arrow{ReactionArrow:1,CustomPotionColor:8602624,display:{Name:'[{"text":"Melt Arrow","italic":false,"color":"aqua"}]'},HideFlags:32,CustomPotionEffects:[{Id:32,Duration:10},{Id:2,Duration:10}]} 1
item replace entity @e[type=minecraft:pillager,tag=radiationPillager] weapon.offhand with tipped_arrow{ReactionArrow:1,CustomPotionColor:16711680,display:{Name:'[{"text":"Radiation Arrow","italic":false,"color":"aqua"}]'},HideFlags:32,CustomPotionEffects:[{Id:29,Duration:10},{Id:32,Duration:10}]} 1

execute as @e[tag=!ondeath,distance=0..] run data merge entity @s[tag=!noondeath] {DeathLootTable:"cmd:entities/ondeath"}
