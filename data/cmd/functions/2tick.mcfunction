
schedule function cmd:2tick 2t replace
# tellraw @a[tag=debuger] {"text":"2tick.mcfunction ran","color":"gray"}

# ice bloom
execute at @a[tag=!spectating] as @e[type=slime,tag=natureCore,distance=..7] at @s run effect give @s bad_omen 1 0 true
execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:2}]}] at @s run function cmd:explodecore
# fire field
execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:32}]}] at @s run function cmd:reactions/firefield
# nature tree
execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:29}]}] at @s run function cmd:reactions/natureplant

#nature tree dmg
execute as @e[type=block_display,tag=naturePlant] at @s positioned ~2.5 ~ ~2.5 run effect give @e[distance=..2.5] bad_omen 1 0 true
execute as @e[type=block_display,tag=naturePlant] run scoreboard players remove @s natureplanttime 1
execute as @e[type=block_display,tag=naturePlant,scores={natureplanttime=..0}] run kill @s

# Use 2nd generation of elements! 1st generation will not be updated. 2nd generation improved server lag by almost 50%!
execute as @e[tag=active] run function cmd:elements2

## Reset STATUSID

# NOTICE: Uncomment the line below to enable status ID reset within active range of players. This may cause more lag!
# execute at @a[tag=!spectating] run scoreboard players set @e[tag=active] currentStatus 0
scoreboard players set @a currentStatus 0



execute as @a[nbt={FallFlying:1b},scores={tempElytra=1..},gamemode=!creative] run scoreboard players remove @s tempElytra 1
execute as @a[nbt={FallFlying:1b},scores={tempElytra=1..},gamemode=!creative] run scoreboard players set @s tempElytra. 30
# time add 1t

## REACTIONTEXT (Legacy)
execute as @e[type=armor_stand, tag=ReactionText] at @s run function cmd:elements/legacyreactiontext


## No stamina
execute as @a[scores={stamina=..0}] run attribute @s generic.attack_damage base set -1024
execute as @a[scores={stamina=..0}] run effect give @s[tag=!BedrockUser] mining_fatigue 1 7 true

## Turn items into others
execute as @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}}] at @s run data merge entity @s {Item:{id:"minecraft:golden_apple"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] at @s run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}

execute as @a[scores={burning=1..}] at @s unless entity @s[nbt={Fire:-20s}] unless entity @s[nbt={Fire:0s}] unless block ~ ~ ~ water run damage @s 1 on_fire by @p
scoreboard players remove @e[scores={charredTime=1..}] charredTime 1
execute as @e[tag=active,scores={charredTime=1..}] at @s run particle dust 0 0 0 1 ~ ~0.5 ~ 0.3 0.5 0.3 0 40

execute as @a[nbt={ActiveEffects:[{Id:25}]}] at @s[nbt={ActiveEffects:[{Id:9}]}] run function cmd:reactions/blast

execute as @a[scores={FNCD=1..}] run scoreboard players remove @s FNCD 1

effect give @a[nbt={ActiveEffects:[{Id:25}]}] conduit_power 8 0 true


effect clear @a levitation

# EFFECTS
effect clear @e[tag=clearFire] hero_of_the_village
effect clear @e[tag=clearIce] slowness
effect clear @e[tag=clearWater] unluck
effect clear @e[tag=clearElectric] conduit_power
effect clear @e[tag=clearNature] bad_omen

#tp @e[type=villager,tag=RMBdetection] 0 0 0

# # 2: Ice | 27: Water | 29: Electric | 32: Fire | 31: Nature



scoreboard players remove @e[scores={burning=1..}] burning 1

execute as @a[nbt={ActiveEffects:[{Id:2}]}] at @s[nbt={ActiveEffects:[{Id:27}]}] run function cmd:reactions/freeze



execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace anvil


execute as @a at @s if block ~ ~ ~ fire run effect give @s hero_of_the_village 6 0 true
execute as @a at @s if block ~ ~ ~ lava run effect give @s hero_of_the_village 8 0 true
execute as @a at @s if block ~ ~ ~ powder_snow run effect give @s slowness 6 0 true
execute as @a at @s if block ~ ~ ~ water run effect give @s unluck 6 0 true

execute as @a[nbt={ActiveEffects:[{Id:2}]}] at @s[nbt={ActiveEffects:[{Id:27}]}] run function cmd:reactions/freeze


execute at @a positioned ~ ~1.5 ~ if entity @e[type=item,distance=..0.3] run damage @p 3 fall

# execute at @a if entity @e[type=item,distance=..0.5,tag=!tripped] run damage @p 3 fall
# execute at @a if entity @e[type=item,distance=..0.5,tag=!tripped] run tag @e[type=item,distance=..0.5,tag=!tripped] add tripped

# PICK
execute at @a[tag=!spectating] as @e[distance=..7,type=item,nbt=!{Item:{tag:{Shield:1}}}] run data merge entity @s[tag=!nopickupdelay] {PickupDelay:100s}

execute as @e[type=interaction,tag=itempickup] at @s on target run data merge entity @e[type=item,distance=..1,limit=1,sort=nearest] {PickupDelay:0s}
execute as @e[type=interaction,tag=itempickup] at @s on target unless entity @e[type=item,distance=..1,limit=1,sort=nearest] run say Error: Unable to find nearest item (within 1m)
execute as @e[type=interaction,tag=itempickup] at @s on target run tp @e[type=item,distance=..1,limit=1,sort=nearest] @s
execute as @e[type=interaction,tag=itempickup] at @s on target run kill @e[type=interaction,tag=itempickup,distance=..1,limit=1,sort=nearest]


execute at @a[tag=!spectating] as @e[type=interaction,tag=itempickup,distance=..8] unless entity @e[type=item,distance=..0.5] run kill @s 
execute at @a[tag=!spectating] at @e[type=item,distance=..7] unless entity @e[type=interaction,tag=itempickup,distance=..0.5] run summon interaction ~ ~-0.1 ~ {Tags:["itempickup"],width:0.4f,height:0.5f,response:1b}


execute as @a[scores={stamina=..0}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ water run tp @s ~ ~-0.2 ~
execute as @a[scores={stamina=..0}] at @s if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~-0.2 ~


#execute as @a[nbt={SelectedItem:{tag:{AoECrossbow:1}}}] unless entity @s[nbt={SelectedItem:{tag:{ChargedProjectiles: [{id: "minecraft:firework_rocket", Count: 26b, tag: {Fireworks: {Flight: 1b, Explosions: [{Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}]}}}]}}}] if entity @s[nbt={SelectedItem:{tag:{Charged:1b}}}] run item replace entity @s weapon.mainhand with crossbow{AoECrossbow:1,HideFlags:97,display:{Name:'[{"text":"[EVENT] ","italic":false,"color":"light_purple"},{"text":"P","italic":false,"color":"red"},{"text":"r","color":"yellow"},{"text":"i","color":"green"},{"text":"d","color":"aqua"},{"text":"e","color":"light_purple"},{"text":" Month\'s Weapon","color":"light_purple"}]',Lore:['[{"text":"To celebrate Pride Month!","italic":true,"color":"dark_purple"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Shoots an explosive AoE rocket.","italic":false,"color":"gray"}]','[{"text":"Recharges when an arrow is loaded.","italic":false,"color":"gray"}]','[{"text":"Effective against Pillagers","italic":false,"color":"gray"}]']},Enchantments: [{id: "minecraft:multishot", lvl: 1}], Charged: 1b, Damage: 0, ChargedProjectiles: [{id: "minecraft:firework_rocket", Count: 26b, tag: {Fireworks: {Flight: 1b, Explosions: [{Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}, {Type: 0b, Colors: [I; 11743532, 15435844, 14602026, 4312372, 6719955, 2437522, 8073150, 14188952]}]}}}]}

## temperatuer

# restoring calc

# For bedrock clients, as well as preventing offhand
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{RMBDetector:1}}]}] if entity @s[tag=BedrockUser,nbt={SelectedItem:{tag:{RMBDetector:1}}}] at @s run function cmd:rmbdetection
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{RMBDetector:1}}]}] if entity @s[nbt={SelectedItem:{tag:{RMBDetector:1}}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @a run item replace entity @s weapon.offhand with carrot_on_a_stick{RMBDetector:1,ItemDetector:1,BlockDetector:1,display:{Name:'[{"text":"RMB Detector","italic":false}]',Lore:['[{"text":"A Blocks and Item detector combined into one.","italic":false,"color":"gray"}]','[{"text":"Put in the off-hand to use.","italic":false,"color":"gray"}]']}} 1


# physcicals

#execute as @e[tag=active,scores={bleedtime=1..}] run scoreboard players remove @s bleedtime 1 

# execute as @e[tag=active,scores={bleedtime=41}] at @s run function cmd:bleed
# execute as @e[tag=active,scores={bleedtime=21}] at @s run function cmd:bleed
# execute as @e[tag=active,scores={bleedtime=1}] at @s run function cmd:bleed



execute as @e[tag=active,scores={staggeredtime=1..}] run scoreboard players remove @s staggeredtime 1 
execute as @e[tag=active,scores={puncturedtime=1..}] run scoreboard players remove @s puncturedtime 1 

execute as @e[type=!player,tag=active,scores={puncturedtime=0}] run attribute @s generic.armor base set -5
execute as @e[type=!player,tag=active,scores={puncturedtime=0}] run attribute @s generic.armor_toughness base set -5

execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] run data merge entity @s {Item:{id:"minecraft:netherite_scrap",Count:4}}

tellraw @a[scores={electricInfusion=1}] {"text": "Your Electric infusion has ended","color": "aqua"}
scoreboard players remove @a[scores={electricInfusion=1..}] electricInfusion 1
tellraw @a[scores={fireInfusion=1}] {"text": "Your Fire infusion has ended","color": "aqua"}
scoreboard players remove @a[scores={fireInfusion=1..}] fireInfusion 1



clear @a lever
clear @a redstone_block
clear @a redstone_torch

