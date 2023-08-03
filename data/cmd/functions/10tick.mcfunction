

schedule function cmd:10tick 10t replace
#tellraw @a[tag=debuger] {"text":"tentick.mcfunction ran","color":"gray"}


enchant @a[scores={axesLvl=7..},nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] sharpness 1
enchant @a[scores={axesLvl=7..},nbt={SelectedItem:{id:"minecraft:golden_axe"}}] sharpness 1
enchant @a[scores={axesLvl=7..},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] sharpness 1
enchant @a[scores={axesLvl=7..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] sharpness 1
enchant @a[scores={axesLvl=7..},nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] sharpness 1


execute as @a[tag=!spectating] if entity @s run execute store result score @s xpos run data get entity @s Pos[0]
execute as @a[tag=!spectating] if entity @s run execute store result score @s ypos run data get entity @s Pos[1]
execute as @a[tag=!spectating] if entity @s run execute store result score @s zpos run data get entity @s Pos[2]

effect give @e[scores={burning=1..}] hero_of_the_village 1 0 true

execute as @e[type=area_effect_cloud,tag=fireField] at @s if block ~ ~ ~ water run kill @e[type=area_effect_cloud,tag=fireField,distance=..3]

#execute as @a[scores={Sneak=1..}] run tag @s add staminachange



execute as @a[scores={staminacooldown=0}] at @s[scores={Walk=0}] run scoreboard players add @s[scores={stamina=..99}] stamina 1

execute at @a run tp @e[type=villager,distance=..5,tag=RMBdetection] 0 0 0
#execute as @e[type=ender_dragon] at @s positioned ^5 ^ ^ unless block ~ ~ ~ #dragon_immune run fill ~2 ~5.5 ~2 ~-2 ~-1 ~-2 air 
#execute as @e[type=ender_dragon] at @s positioned ^-5 ^ ^ unless block ~ ~ ~ #dragon_immune run fill ~2 ~5.5 ~2 ~-2 ~-1 ~-2 air
#execute as @e[type=ender_dragon] at @s positioned ^ ^ ^5 unless block ~ ~ ~ #dragon_immune run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
#execute as @e[type=ender_dragon] at @s positioned ^ ^ ^3 unless block ~ ~ ~ #dragon_immune run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
#execute as @a at @s if block ~ ~ ~ lava run damage @s 100 lava

# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ coarse_dirt run tp @s ~ ~-0.001 ~

# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ sand if block ~ ~ ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ sand if block ~ ~1 ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ sand if block ~ ~2 ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ dirt if block ~ ~ ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ dirt if block ~ ~1 ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ clay if block ~ ~ ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ clay if block ~ ~1 ~ water run tp @s ~ ~-0.0001 ~
# execute as @a[scores={Sneak=0},nbt=!{RootVehicle:{}},tag=!BedrockUser] at @s if block ~ ~-1 ~ gravel if block ~ ~ ~ water run tp @s ~ ~-0.0001 ~

execute as @a[tag=!spectating] if entity @s[scores={stamina=..0}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ water run scoreboard players set @s currentStatus 103
execute as @a[tag=!spectating] if entity @s[scores={stamina=..0}] at @s if block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players set @s currentStatus 103
execute as @a[tag=!spectating] if entity @s[scores={stamina=..0}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ water run damage @s 3 drown 
execute as @a[tag=!spectating] if entity @s[scores={stamina=..0}] at @s if block ~ ~ ~ water if block ~ ~1 ~ water run damage @s 3 drown 


scoreboard players remove @a[scores={shields=1..500}] shields 1
execute at @a as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"}}] if entity @r[scores={myrandom=4..9}] run tag @s add nopeach

execute at @a as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"}},tag=!nopeach,distance=..10,limit=2] run data merge entity @s {Item:{Count:2b,id:"minecraft:player_head",tag:{Peach:1,IncomingHealing:1,display:{Name:'[{"text":"Peaches","italic":false,"color":"aqua"}]',Lore:['[{"text":"When worn: +1 Incoming Healing","italic":false,"color":"gray"}]']},SkullOwner:{Id:[I;-203190900,1315653592,-2004703885,1342631333],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjAwOGU3YTk5ZDIyNGY2NzhkNjdiYjU0ZDZlYWRlYTc2YjMzNzk4YTE5YWUyOTIyNjUxODNmZWFhMjI5MDFjNyJ9fX0="}]}}}}}


#execute as @e[type=ender_dragon] at @s run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1.2 0.75

scoreboard players remove @s[scores={flameBlade=1..}] flameBlade 1


execute as @a[nbt={Inventory:[{Slot:103b}]}] unless data entity @s Inventory[{Slot:103b,tag:{ArmorVersion:6}}] run function cmd:armorstat
execute as @a[nbt={Inventory:[{Slot:102b}]}] unless data entity @s Inventory[{Slot:102b,tag:{ArmorVersion:6}}] run function cmd:armorstat
execute as @a[nbt={Inventory:[{Slot:101b}]}] unless data entity @s Inventory[{Slot:101b,tag:{ArmorVersion:6}}] run function cmd:armorstat
execute as @a[nbt={Inventory:[{Slot:100b}]}] unless data entity @s Inventory[{Slot:100b,tag:{ArmorVersion:6}}] run function cmd:armorstat

execute as @a[nbt=!{SelectedItem:{tag:{WeaponVersion:4}}}] run function cmd:weaponstat

#execute as @a[nbt=!{SelectedItem:{tag:{BowVersion:2}}}] run function cmd:bowstat

execute as @a[gamemode=!spectator,scores={shields=1}] at @s run particle block nether_bricks ~ ~0.9 ~ 0.5 0.3 0.5 0 1
execute as @a[gamemode=!spectator,scores={shields=2}] at @s run particle block nether_bricks ~ ~0.9 ~ 0.5 0.3 0.5 0 2
execute as @a[gamemode=!spectator,scores={shields=3}] at @s run particle block nether_bricks ~ ~0.9 ~ 0.5 0.3 0.5 0 3
execute as @a[gamemode=!spectator,scores={shields=4..}] at @s run particle block nether_bricks ~ ~0.9 ~ 0.5 0.3 0.5 0 4
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold_block",tag:{Shield:1}}}] run data merge entity @s {Item:{id:"minecraft:raw_gold_block",tag:{Shield:1},Count:1b}}

execute as @e[type=item,nbt={Item:{tag:{Shield:1}}}] run data merge entity @s {Glowing:1b}

execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ fire run effect give @s hero_of_the_village 6 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ campfire run effect give @s hero_of_the_village 4 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ torch run effect give @s hero_of_the_village 1 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ lava run effect give @s hero_of_the_village 8 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~-1 ~ magma_block run effect give @s hero_of_the_village 3 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ powder_snow run effect give @s slowness 6 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~1 ~ powder_snow run effect give @s slowness 4 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~-1 ~ #ice run effect give @s slowness 1 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~1 ~ water run effect give @s unluck 4 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ water run effect give @s unluck 6 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~-1 ~ #beacon_base_blocks run effect give @s conduit_power 18 0 true
execute at @a[tag=!spectating] as @e[distance=..24] at @s if block ~ ~ ~ #piglin_repellents run effect give @s conduit_power 12 0 true
execute as @e[type=!player,nbt=!{Fire:-1s}] run effect give @s[nbt=!{Fire:0s},type=!armor_stand] hero_of_the_village 4 1 true

execute as @a[scores={shields=1..}] unless entity @s[scores={superconduct=1..}] run effect give @s resistance 1 4
execute as @a[scores={shields=1..,superconduct=1..}] run effect give @s resistance 1 2

execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",tag:{ReactantCore:1}}}] at @s run function cmd:reactantcore
execute as @e[type=item,nbt={Item:{id:"minecraft:heart_of_the_sea",tag:{TransmuteCore:1}}}] at @s run function cmd:transmutationcore
effect give @e[type=blaze] hero_of_the_village 10 1 true
effect give @e[type=enderman] slowness 10 0 true
effect give @e[type=stray] slowness 10 0 true
effect give @e[type=shulker] conduit_power 10 1 true
effect give @e[type=magma_cube] hero_of_the_village 10 1 true




scoreboard players enable @a resetall
execute as @a[scores={resetall=-1}] run tellraw @s {"text":"PLEASE READ:\nThis command resets your entire profile!\nIt's purpose is for speedrunning\nType /trigger resetall set 1 to reset."}
execute as @a[scores={resetall=1}] run clear @s
execute as @a[scores={resetall=1}] run xp set @s 0 levels
execute as @a[scores={resetall=1}] run kill @s
execute as @a[scores={resetall=1}] run scoreboard players reset @s
scoreboard players set @a resetall -2

## DEBUG
execute as @a[tag=!spectating] if entity @s run execute store result score @s saturation run data get entity @s foodSaturationLevel
execute as @a[tag=!spectating] if entity @s run execute store result score @s exhaustion run data get entity @s foodExhaustionLevel
scoreboard players enable @a debug
execute as @a[tag=!spectating] if entity @s[scores={debug=1..}] at @s run tellraw @s [{"text":"Developer Options:\nAdditional stats: ","color":"light_purple"},{"text":"On ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131101"}},{"text":"| Off","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131100"}},{"text":"\nReduceMSG: ","color":"light_purple"},{"text":"On ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131103"}},{"text":"| Off","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131102"}},{"text":"\nDebug mode: ","color":"light_purple"},{"text":"On ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131109"}},{"text":"| Off","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 1031311010"}},{"text":"\nShow stamina in title: ","color":"light_purple"},{"text":"On ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 1031311011"}},{"text":"| Off","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 1031311012"}},{"text":"\nDev features: ","color":"light_purple"},{"text":"On ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131105"}},{"text":"| Off","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131104"}},{"text":"\nParticles: ","color":"light_purple"},{"text":"Lowest ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 1031311071"}},{"text":"| Decreased","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 1031311072"}},{"text":" | All","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 103131106"}}]
scoreboard players set @a debug 0

#enchanted_book{EBook:1,Unb:-1,display:{Name:'[{"text":"Unbreakable Enchantment","italic":false,"color":"gold"}]',Lore:['[{"text":"Throw together with an item to","italic":false,"color":"gray"}]','[{"text":"grant it the Unbreakable tag.","italic":false,"color":"gray"}]']}} 1

execute at @a as @e[type=item,distance=..8,nbt={Item:{tag:{Unb:-1,EBook:1}}}] at @s run data merge entity @e[type=item,nbt=!{Item:{tag:{EBook:1}}},distance=..0.5,limit=1,sort=nearest] {Item:{tag:{Unbreakable:1b}}}
execute at @a as @e[type=item,distance=..8,nbt={Item:{tag:{Unb:-1,EBook:1}}}] at @s if entity @e[type=item,nbt=!{Item:{tag:{EBook:1}}},distance=..0.5,limit=1,sort=nearest] run kill @s

execute at @a as @e[type=item,distance=..8,nbt={Item:{tag:{Sapphire:1},Count:9b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:copper_block"}},distance=..0.5] run execute as @p[distance=..8] run function cmd:bronzerelic
execute at @a as @e[type=item,distance=..8,nbt={Item:{tag:{Sapphire:1},Count:9b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:copper_block"}},distance=..0.5] if entity @p[distance=..8] run kill @e[type=item,distance=..0.5]

## Enchantments
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}},scores={gatheringLvl=10..}] efficiency 5
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}},scores={gatheringLvl=5..9}] efficiency 3
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}},scores={gatheringLvl=..4}] efficiency 1
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}},scores={gatheringLvl=..4}] efficiency 1
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}}] fortune 3
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}}] sweeping 2
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}}] looting 3
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}}] quick_charge 2
enchant @a[nbt=!{SelectedItem:{tag:{NoEnch:1}}}] piercing 1


execute as @a[scores={gatheringLvl=4..}] at @s store result score @s rocktemp run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 stone_button[powered=true,face=floor,facing=south] replace stone_button[powered=true,face=floor,facing=north] 
execute as @a[scores={gatheringLvl=4..,rocktemp=1..}] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace stone_button[powered=true,face=floor,facing=south] 
execute as @a[scores={gatheringLvl=4..,rocktemp=1..},nbt={SelectedItem:{}}] at @s run give @s firework_star{Rock:1,display:{Name:'[{"text":"Rock","italic": false}]'}} 2
execute as @a[scores={gatheringLvl=4..,rocktemp=1..},nbt=!{SelectedItem:{}}] at @s run item replace entity @s weapon.mainhand with firework_star{Rock:1,display:{Name:'[{"text":"Rock","italic": false}]'}} 2
execute as @a[scores={gatheringLvl=4..,rocktemp=1..}] at @s run scoreboard players set @s rocktemp 0

execute as @a run function cmd:slrequirement
