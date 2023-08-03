function cmd:slrequirement
execute if entity @s[tag=slrequired] run return 0

scoreboard players remove @s stamina. 1550
tag @s add staminachange

#prevent hitting self
tag @s add DDself
# execute as @s[scores={doDmg=..104}] positioned as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] positioned ~ ~1 ~ run function cmd:dmg/one
# execute as @s[scores={doDmg=104..204}] positioned as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] positioned ~ ~1 ~ run function cmd:dmg/two
# execute as @s[scores={doDmg=205..}] positioned as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] positioned ~ ~1 ~ run function cmd:dmg/one


# PHYSCICALS

scoreboard players operation @s random100 = @s myrandom

scoreboard players set 10 random100 10
scoreboard players operation @s random100 *= 10 intnumbers

scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
scoreboard players operation @s random100 += @s myrandom


scoreboard players operation @s dpsptemp += @s doDmg



#/give @p filled_map{ART-ScholarDraft:1,HideFlags:32,display:{Name:'[{"text":"[ARTIFACT] ","italic":false},{"text":"Scholar\'s Draft","color":"aqua"}]',Lore:['[{"text":"Allows Criticals to score from reactions. Reactions","italic":false,"color":"gray"}]','[{"text":"include Melt, Crisp, Radiation, Electrified and Bloom.","italic":false,"color":"gray"}]','[{"text":"Melee Criticals also will not work if the artifact is active.","italic":false,"color":"gray"}]']}} 1

# crit chance
function cmd:critchance

execute as @s[scores={myrandom=0..4},nbt={SelectedItem:{tag:{Sword:1}}}] run scoreboard players set @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] bleedtime 60
execute as @s[nbt={SelectedItem:{tag:{Axe:1}}}] run scoreboard players set @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] staggeredtime 40
execute as @s[nbt={SelectedItem:{tag:{Axe:1}}}] run attribute @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] generic.movement_speed base set -2

execute as @s[nbt={SelectedItem:{tag:{Pick:1}}}] run scoreboard players set @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] puncturedtime 40
execute as @s[nbt={SelectedItem:{tag:{Pick:1}}}] run attribute @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] generic.armor base set -10
execute as @s[nbt={SelectedItem:{tag:{Pick:1}}}] run attribute @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] generic.armor_toughness base set -10

execute as @s[nbt={SelectedItem:{tag:{Pick:1}}}] at @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run summon armor_stand ~ ~1.3 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"⛏","color":"#DDDDDD"}',Tags:[ReactionText]}
execute as @s[nbt={SelectedItem:{tag:{Axe:1}}}] at @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run summon armor_stand ~ ~1.3 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"🪓","color":"#DDDDDD"}',Tags:[ReactionText]}
execute as @s[scores={myrandom=0..4},nbt={SelectedItem:{tag:{Sword:1}}}] at @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run summon armor_stand ~ ~1.3 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"🗡","color":"#DDDDDD"}',Tags:[ReactionText]}

scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen

execute as @s[scores={fireInfusion=1..}] run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s hero_of_the_village 1 0 true
execute as @s[scores={electricInfusion=1..}] run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s conduit_power 1 0 true


execute if score @s[nbt=!{Inventory:[{tag:{ART-ScholarDraft:1}}]}] critchance > @s random100 at @s run function cmd:criticals


# execute as @s[scores={ARcrit=1..3}] if score @s ARcrit >= @s myrandom at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s[type=!giant] run particle block redstone_block ~ ~0.5 ~ 0.1 0.5 0.1 0 1000
# execute as @s[scores={ARcrit=1..3}] if score @s ARcrit >= @s myrandom at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s[type=giant] run particle block redstone_block ~ ~6 ~ 1 6 1 0 10000
execute as @s[scores={ARcrit=4..,myrandom=0..5}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s[type=!giant] run particle block redstone_block ~ ~0.5 ~ 0.1 0.5 0.1 0 1000
execute as @s[scores={ARcrit=4..,myrandom=0..5}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s[type=giant] run particle block redstone_block ~ ~6 ~ 1 5 1 0 5000
execute as @s[scores={ARcrit=4..,myrandom=0..5}] at @s run function cmd:criticals
execute as @s[scores={ARcrit=4..,myrandom=0..5}] at @s run playsound block.metal.break player @s ~ ~ ~ 3 0

#execute as @s[scores={myrandom=9}] at @s if entity @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest,scores={bleedtime=1..}] run function cmd:criticals
#execute as @s[scores={myrandom=8}] at @s if entity @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest,scores={staggeredtime=1..}] run function cmd:criticals


execute as @s[scores={ARcrit=1..,myrandom=0..5}] run scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen



execute as @s[nbt={SelectedItem:{tag:{PhysicalSword:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s run function cmd:cmd/physicaldmg
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s run function cmd:cmd/physicaldmg


#PHYSICAL
execute as @s[nbt={SelectedItem:{tag:{DystopianAspect:1}}}] at @s[nbt={ActiveEffects:[{Id:5,Amplifier:2b}]}] run effect give @s strength 1 2
execute as @s[nbt={SelectedItem:{tag:{DystopianAspect:1}}}] at @s[nbt={ActiveEffects:[{Id:5,Amplifier:1b}]}] run effect give @s strength 1 2
execute as @s[nbt={SelectedItem:{tag:{DystopianAspect:1}}}] at @s[nbt={ActiveEffects:[{Id:5,Amplifier:0b}]}] run effect give @s strength 2 1
execute as @s[nbt={SelectedItem:{tag:{DystopianAspect:1}}}] at @s[nbt=!{ActiveEffects:[{Id:5}]}] run effect give @s strength 3 0






# FIRE ASPECT
scoreboard players operation @a myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
execute as @s[scores={hp=6..},nbt={SelectedItem:{tag:{FireAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s[nbt=!{Fire:-1s}] conduit_power 1
execute as @s[scores={hp=6..},nbt={SelectedItem:{tag:{FireAspect:1}}}] at @s run data merge entity @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] {Fire:-1s}
execute as @s[scores={myrandom=0..6},nbt={SelectedItem:{tag:{FireAspect:1}}}] at @s run data merge entity @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] {Fire:100s}
execute as @s[scores={myrandom=0..5},nbt={SelectedItem:{tag:{FireAspect:1}}}] at @s run execute at @e[tag=!DDself,nbt={HurtTime:10s},distance=..3,limit=1,sort=nearest] run summon lightning_bolt
# ICE ASPECT
execute as @s[scores={myrandom=0..5},nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s[nbt=!{ActiveEffects:[{Id:2}]}] slowness 4 1
# execute as @s[nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest,tag=!undead] if entity @s[tag=!alreadyCrit] run effect give @s[tag=fromNether] instant_damage 1 1
# execute as @s[nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest,tag=undead] if entity @s[tag=!alreadyCrit] run effect give @s[tag=fromNether] instant_health 1 1
# execute as @s[nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s[tag=fromNether] if entity @s[tag=!alreadyCrit] run particle block redstone_block ~ ~0.5 ~ 0.1 0.5 0.1 0 1000
# execute as @s[nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s[tag=fromNether] if entity @s[tag=!alreadyCrit] run tag @s add alreadyCrit
execute as @s[scores={myrandom=0..2},nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] if entity @s[tag=!important] at @s run particle block blue_ice ~ ~0.5 ~ 0.1 0.5 0.1 0 1000
execute as @s[scores={myrandom=0..2},nbt={SelectedItem:{tag:{IceAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] if entity @s[tag=!important] run scoreboard players set @s noAITime 60
# RAINBOW ASPECT
execute as @s[scores={myrandom=0..1},nbt={SelectedItem:{tag:{RainbowAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s hero_of_the_village 2 1 true
execute as @s[scores={myrandom=2..3},nbt={SelectedItem:{tag:{RainbowAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s slowness 2 1 true
execute as @s[scores={myrandom=4..5},nbt={SelectedItem:{tag:{RainbowAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s unluck 2 1 true
execute as @s[scores={myrandom=6..7},nbt={SelectedItem:{tag:{RainbowAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s conduit_power 2 1 true
execute as @s[scores={myrandom=8..9},nbt={SelectedItem:{tag:{RainbowAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s bad_omen 2 1 true
# WATER ASPECT
execute as @s[nbt={SelectedItem:{tag:{WaterAspect:1}}}] at @s run execute if entity @e[tag=!DDself,nbt={HurtTime:10s,ActiveEffects:[{Id:27}]},distance=..10,limit=1,sort=nearest] run tellraw @s[scores={shields=..50}] {"text": "+10 Shields","color": "yellow"}
execute as @s[nbt={SelectedItem:{tag:{WaterAspect:1}}}] at @s run execute if entity @e[tag=!DDself,nbt={HurtTime:10s,ActiveEffects:[{Id:31}]},distance=..10,limit=1,sort=nearest] run tellraw @s[scores={shields=..50}] {"text": "+10 Shields","color": "yellow"}
execute as @s[nbt={SelectedItem:{tag:{WaterAspect:1}}}] at @s run execute if entity @e[tag=!DDself,nbt={HurtTime:10s,ActiveEffects:[{Id:27}]},distance=..10,limit=1,sort=nearest] run scoreboard players add @s[scores={shields=..50}] shields 10
execute as @s[nbt={SelectedItem:{tag:{WaterAspect:1}}}] at @s run execute if entity @e[tag=!DDself,nbt={HurtTime:10s,ActiveEffects:[{Id:31}]},distance=..10,limit=1,sort=nearest] run scoreboard players add @s[scores={shields=..50}] shields 10
execute as @s[nbt={SelectedItem:{tag:{WaterAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s unluck 4 1 true
# ELECTRIC ASPECT
execute as @s[nbt={SelectedItem:{tag:{ElectricAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s conduit_power 4 1 true
# NATURE ASPECT
execute as @s[nbt={SelectedItem:{tag:{NatureAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run scoreboard players set @s naturetarget 100
execute as @s[nbt={SelectedItem:{tag:{NatureAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s bad_omen 4 1 true

# FLAME ASPECT
execute as @s[nbt={SelectedItem:{tag:{FlameAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s hero_of_the_village 1 1 true
# COLD ASPECT

execute as @s[nbt={SelectedItem:{tag:{ColdAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run effect give @s slowness 2 1 true
execute as @s[nbt={SelectedItem:{tag:{ColdAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s,ActiveEffects:[{Id:32}]},distance=..10,limit=1,sort=nearest,scores={reactionICD=..0}] run scoreboard players set @s reactionICD -8
# WIND APSECT
execute as @s[nbt={SelectedItem:{tag:{WindAspect:1}}}] at @s run execute as @e[tag=!DDself,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] at @s run function cmd:reactions/whirl




scoreboard players set @s doDmgCriticals 0

scoreboard players set @s doDmg2 0

scoreboard players set @s doDmg 0

#remove
tag @s remove DDself
#DMG CD
scoreboard players add @s DMGCD 0
execute if entity @s[scores={DMGCD=0}] run tag @s add onDMGCD
execute if entity @s[scores={DMGCD=0}] run attribute @s generic.attack_damage base set -100
execute if entity @s[scores={DMGCD=0}] run scoreboard players set @s DMGCD 10



scoreboard players set @s doADmg 0
scoreboard players set @s doRDmg 0