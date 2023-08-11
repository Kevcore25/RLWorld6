# execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] unless entity @s[x_rotation=-90] positioned ~ ~0.3 ~ if block ^ ^0.5 ^1 water run function cmd:rmb/drinkwater
# execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] unless entity @s[x_rotation=-90] positioned ~ ~0.3 ~ if block ^ ^0.5 ^2 water unless block ^ ^0.5 ^1 water run function cmd:rmb/drinkwater
# execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] unless entity @s[x_rotation=-90] positioned ~ ~0.3 ~ if block ^ ^ ^1 water unless block ^ ^0.5 ^2 water unless block ^ ^0.5 ^1 water run function cmd:rmb/drinkwater
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{RMBDetector:1}}]}] if entity @s[nbt={SelectedItem:{tag:{RMBDetector:1}}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand

## BLOCKS

execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^4 gravel unless block ^ ^ ^3 gravel unless block ^ ^ ^2 gravel unless block ^ ^ ^1 gravel positioned ^ ^ ^4 align xyz run function cmd:rmb/gravel
execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^3 gravel unless block ^ ^ ^2 gravel unless block ^ ^ ^1 gravel positioned ^ ^ ^3 align xyz run function cmd:rmb/gravel
execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^2 gravel unless block ^ ^ ^1 gravel positioned ^ ^ ^2 align xyz run function cmd:rmb/gravel
execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^1 gravel positioned ^ ^ ^1 align xyz run function cmd:rmb/gravel

execute if entity @s[nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^4 #leaves unless block ^ ^ ^3 #leaves unless block ^ ^ ^2 #leaves unless block ^ ^ ^1 #leaves positioned ^ ^ ^4 align xyz run function cmd:rmb/leaves
execute if entity @s[nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^3 #leaves unless block ^ ^ ^2 #leaves unless block ^ ^ ^1 #leaves positioned ^ ^ ^3 align xyz run function cmd:rmb/leaves
execute if entity @s[nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^2 #leaves unless block ^ ^ ^1 #leaves positioned ^ ^ ^2 align xyz run function cmd:rmb/leaves
execute if entity @s[nbt=!{SelectedItem:{}}] anchored eyes rotated as @s if block ^ ^ ^1 #leaves positioned ^ ^ ^1 align xyz run function cmd:rmb/leaves

execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] unless entity @s[x_rotation=-90] anchored eyes rotated as @s if block ^ ^ ^1 water[level=0] unless block ^ ^ ^2 water unless block ^ ^ ^3 water run function cmd:rmb/drinkwater
execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] unless entity @s[x_rotation=-90] anchored eyes rotated as @s if block ^ ^ ^2 water[level=0] unless block ^ ^ ^1 water unless block ^ ^ ^3 water run function cmd:rmb/drinkwater
execute if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}}] unless entity @s[x_rotation=-90] anchored eyes rotated as @s if block ^ ^ ^3 water[level=0] unless block ^ ^ ^1 water unless block ^ ^ ^2 water run function cmd:rmb/drinkwater

## RAIN
execute as @e[type=armor_stand,tag=randomGen,limit=1] if entity @s[tag=raining] run execute as @p if entity @s[scores={Sneak=1..},nbt=!{SelectedItem:{}},x_rotation=-90] run function cmd:rmb/drinkwater

# execute positioned ~ ~0. ~ run summon armor_stand ^ ^0.5 ^1 {NoGravity:1b,Small:1b}
# execute positioned ~ ~0. ~ run summon armor_stand ^ ^0.5 ^2 {NoGravity:1b,Small:1b}

## ITEMS]
execute if entity @s[nbt={SelectedItem:{tag:{FlintSword:1}}}] run scoreboard players add @s FNCD 0

execute if entity @s[nbt={SelectedItem:{tag:{FlintSword:1}}},scores={FNCD=0}] run summon armor_stand ~ ~ ~ {Tags:["FN"],Pose:{RightArm:[0f,0f,270f]},HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Invisible:1b}
execute if entity @s[nbt={SelectedItem:{tag:{FlintSword:1}}},scores={FNCD=0}] as @e[type=armor_stand,tag=FN,distance=..1] rotated as @p run tp @s ^ ^ ^ ~ ~
execute if entity @s[nbt={SelectedItem:{tag:{FlintSword:1}}},scores={FNCD=0}] run scoreboard players remove @s stamina 3
execute if entity @s[nbt={SelectedItem:{tag:{FlintSword:1}}},scores={FNCD=0}] run tag @s add staminachange
execute if entity @s[nbt={SelectedItem:{tag:{FlintSword:1}}},scores={FNCD=0}] run scoreboard players set @s FNCD 15



# asd

execute if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] anchored eyes rotated as @s unless block ^ ^ ^4 air unless block ^ ^ ^4 redstone_wire if block ^ ^ ^3 air if block ^ ^ ^2 air if block ^ ^ ^1 air positioned ^ ^ ^4 align xyz positioned ~ ~1 ~ run setblock ^ ^ ^ redstone_wire destroy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] anchored eyes rotated as @s unless block ^ ^ ^3 air unless block ^ ^ ^3 redstone_wire if block ^ ^ ^2 air if block ^ ^ ^1 air positioned ^ ^ ^3 align xyz positioned ~ ~1 ~ run setblock ^ ^ ^ redstone_wire destroy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] anchored eyes rotated as @s unless block ^ ^ ^2 air unless block ^ ^ ^2 redstone_wire if block ^ ^ ^1 air positioned ^ ^ ^2 align xyz positioned ~ ~1 ~ run setblock ^ ^ ^ redstone_wire destroy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] anchored eyes rotated as @s unless block ^ ^ ^1 air unless block ^ ^ ^1 redstone_wire positioned ^ ^ ^1 align xyz positioned ~ ~1 ~ run setblock ^ ^ ^ redstone_wire destroy


## ULTATMITES

scoreboard players set @s[tag=BedrockUser] Sneak 1

# ult
scoreboard players add @s ultCD 0

# DODGE
execute if entity @s[nbt={SelectedItem:{tag:{Sword:1}}},scores={Sneak=0}] run effect give @s resistance 1 4


# COLD
execute if entity @s[nbt={SelectedItem:{tag:{ColdAspect:1}}},scores={ultCD=..0,Sneak=1..}] positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1.5 {Tags:["SS"],Invisible:1b,Marker:1b}
execute if entity @s[nbt={SelectedItem:{tag:{ColdAspect:1}}},scores={ultCD=..0,Sneak=1..}] positioned ~ ~1 ~ positioned ^ ^ ^1.5 as @e[type=armor_stand,tag=SS,distance=..1] rotated as @p run tp @s ^ ^ ^ ~ ~
execute if entity @s[nbt={SelectedItem:{tag:{ColdAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Snowstorm","color": "gold"}]


# ICE
execute if entity @s[nbt={SelectedItem:{tag:{IceAspect:1}}},scores={ultCD=..0,Sneak=1..}] as @e[type=!block_display,tag=!important,distance=..4,scores={noAITime=1..}] run damage @s 15 out_of_world by @p
execute if entity @s[nbt={SelectedItem:{tag:{IceAspect:1}}},scores={ultCD=..0,Sneak=1..}] run execute as @e[type=!block_display,tag=!important,distance=..4] if entity @s[type=!#arrows] if entity @s[type=!armor_stand] run scoreboard players set @s[type=!item] noAITime 100
execute if entity @s[nbt={SelectedItem:{tag:{IceAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Freeze!","color": "gold"}]

# ELECTRIC
execute if entity @s[nbt={SelectedItem:{tag:{ElectricAspect:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players set @s electricInfusion 80
execute if entity @s[nbt={SelectedItem:{tag:{ElectricAspect:1}}},scores={ultCD=..0,Sneak=1..}] as @e[type=!player,distance=..5] run damage @s 1 magic by @p
execute if entity @s[nbt={SelectedItem:{tag:{ElectricAspect:1}}},scores={ultCD=..0,Sneak=1..}] run effect give @e[type=!player,distance=..5] conduit_power 1 0 true
execute if entity @s[nbt={SelectedItem:{tag:{ElectricAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Electrified Sword","color": "gold"}]

# FLAME
execute if entity @s[nbt={SelectedItem:{tag:{FlameAspect:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players remove @s ultCD 180
execute if entity @s[nbt={SelectedItem:{tag:{FlameAspect:1}}},scores={ultCD=..0,Sneak=1..}] as @e[distance=..5,type=!player] run damage @s 3 magic
execute if entity @s[nbt={SelectedItem:{tag:{FlameAspect:1}}},scores={ultCD=..0,Sneak=1..}] run effect give @e[distance=..5,type=!player] hero_of_the_village 1 0 true
execute if entity @s[nbt={SelectedItem:{tag:{FlameAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Pyro Stomp","color": "gold"}]


# NATURE
execute if entity @s[nbt={SelectedItem:{tag:{NatureAspect:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players set @e[type=!player,distance=..7] naturetarget 150
execute if entity @s[nbt={SelectedItem:{tag:{NatureAspect:1}}},scores={ultCD=..0,Sneak=1..}] run effect give @e[type=!player,distance=..7] bad_omen 3 0 true
execute if entity @s[nbt={SelectedItem:{tag:{NatureAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Nature Sees Your Actions!","color": "gold"}]

# # WATER
execute if entity @s[nbt={SelectedItem:{tag:{WaterAspect:1}}},scores={ultCD=..0,Sneak=1..}] run summon armor_stand ~ ~5 ~ {Invisible:1b,Marker:1b,Tags:["rainCloud"]}
execute if entity @s[nbt={SelectedItem:{tag:{WaterAspect:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players remove @s ultCD 60
execute if entity @s[nbt={SelectedItem:{tag:{WaterAspect:1}}},scores={ultCD=..0,Sneak=1..}] run effect clear @s conduit_power
execute if entity @s[nbt={SelectedItem:{tag:{WaterAspect:1}}},scores={ultCD=..0,Sneak=1..}] run effect clear @s slowness
execute if entity @s[nbt={SelectedItem:{tag:{WaterAspect:1}}},scores={ultCD=..0,Sneak=1..}] run effect clear @s hero_of_the_village
execute if entity @s[nbt={SelectedItem:{tag:{WaterAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "And another storm...","color": "gold"}]

# FIRE
execute if entity @s[nbt={SelectedItem:{tag:{FireAspect:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players set @e[type=!player,tag=!player,distance=..4] burning 30
execute if entity @s[nbt={SelectedItem:{tag:{FireAspect:1}}},scores={ultCD=..0,Sneak=1..}] as @e[type=!player,tag=!player,distance=..4,scores={burning=1..}] run damage @s 10 generic by @p
execute if entity @s[nbt={SelectedItem:{tag:{FireAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Hot as the sun","color": "gold"}]
# # WINDD
execute if entity @s[nbt={SelectedItem:{tag:{WindAspect:1}}},scores={ultCD=..0,Sneak=1..}] run summon marker ~ ~1 ~ {Tags:["whirlwind"], CustomName:'"Whirlwind"'}
execute if entity @s[nbt={SelectedItem:{tag:{WindAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Whirlwind","color": "gold"}]


# # STONE
execute if entity @s[nbt={SelectedItem:{tag:{StoneSword:1}}},scores={ultCD=..0,Sneak=1..}] run execute at @e[type=!player,distance=..5] run summon armor_stand ~0.5 ~5 ~ {Tags:["FN"],Pose:{RightArm:[90f,0f,0f]},HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Invisible:1b}
execute if entity @s[nbt={SelectedItem:{tag:{StoneSword:1}}},scores={ultCD=..0,Sneak=1..}] run execute at @e[type=!player,distance=..5] positioned ~0.5 ~5 ~ as @e[type=armor_stand,tag=FN,distance=..2] run tp @s ~ ~ ~ ~ 90
execute if entity @s[nbt={SelectedItem:{tag:{StoneSword:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players remove @s ultCD 140
execute if entity @s[nbt={SelectedItem:{tag:{StoneSword:1}}},scores={ultCD=..0,Sneak=1..,combatLvl=5..}] run scoreboard players remove @s ultCD 40
execute if entity @s[nbt={SelectedItem:{tag:{StoneSword:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Raining Knives","color": "gold"}]

# RAINBOW ASPECT
execute if entity @s[nbt={SelectedItem:{tag:{RainbowAspect:1}}},scores={ultCD=..0,Sneak=1..}] at @s run execute as @e[type=!lightning_bolt,distance=2..7,limit=2,sort=random] if entity @s[type=!player] run function cmd:lightning2
execute if entity @s[nbt={SelectedItem:{tag:{RainbowAspect:1}}},scores={ultCD=..0,Sneak=1..}] run scoreboard players remove @s ultCD 160
execute if entity @s[nbt={SelectedItem:{tag:{RainbowAspect:1}}},scores={ultCD=..0,Sneak=1..}] run tellraw @s [{"text": "Activated Ultimate: ","color": "green"},{"text": "Thunderstorm? Or Lightning?","color": "gold"}]

scoreboard players set @s[scores={ultCD=..-1},gamemode=creative] ultCD 0

execute if entity @s[nbt={SelectedItem:{tag:{Sword:1}}},scores={ultCD=1..,Sneak=1..}] run tellraw @s {"text": "Ultimate cooldown in effect!","color": "red"}
execute if entity @s[nbt={SelectedItem:{tag:{Sword:1}}},scores={ultCD=..0,Sneak=1..},gamemode=!creative] run scoreboard players add @s ultCD 200

execute if entity @s[nbt={SelectedItem:{tag:{ER:2}}}] run scoreboard players add @s energy 40
execute if entity @s[nbt={SelectedItem:{tag:{ER:2}}}] run tellraw @s {"text": "+40 Energy","color": "green"}
execute if entity @s[nbt={SelectedItem:{tag:{ER:2}}}] run clear @s popped_chorus_fruit{ER:2} 1

# FOOD UPDATE
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice"}},scores={firstaidLvl=5..}] run effect give @s regeneration 2 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice"}},scores={firstaidLvl=5..}] run clear @s glistering_melon_slice 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice"}},scores={firstaidLvl=..4}] run tellraw @s {"text": "You require a First Aid skill level of 5 to receive healing for this item!","color": "red"}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:melon_slice"}}] run scoreboard players add @s thirst 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:melon_slice"}}] run clear @s melon_slice 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] run effect give @s speed 6 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] run clear @s sugar 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run function cmd:removeelements
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run effect give @s glowing 3 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run clear @s glowstone_dust 1

execute if entity @s[nbt={SelectedItem:{tag:{Peach:1}}}] run function cmd:peach

# o2 bottle
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}},scores={myrandom=0}] run playsound item.bottle.fill_dragonbreath player @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}},scores={myrandom=0}] run item replace entity @s weapon.mainhand with potion{O2Bottle:1,CustomPotionColor:13172735,display:{Name:'[{"text":"Oxygen Bottle","italic":false}]',Lore:['[{"text":"Restores 30 Oxygen when used","italic":false,"color":"gray"}]']},HideFlags:32,CustomPotionEffects:[{Id:13,Duration:10,ShowParticles:0b,ShowIcon:0b}]} 1