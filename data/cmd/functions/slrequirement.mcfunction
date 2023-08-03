#setup
tag @s remove slrequired
tag @s remove sldrequired


# code
execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}, scores={combatLvl=..0}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}, scores={combatLvl=..1}] unless entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{FlintSword:1}}}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}, scores={combatLvl=..5}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}, scores={combatLvl=..3}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}, scores={combatLvl=..6}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}, scores={combatLvl=..8}] run tag @s add slrequired

execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}, scores={axesLvl=..1}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}, scores={axesLvl=..2}] unless entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe",tag:{FlintHatchet:1}}}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}, scores={axesLvl=..5}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}, scores={axesLvl=..3}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}, scores={axesLvl=..7}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}, scores={axesLvl=..8}] run tag @s add slrequired

execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}, scores={pickaxesLvl=..0}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}, scores={pickaxesLvl=..2}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}, scores={pickaxesLvl=..5}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}, scores={pickaxesLvl=..4}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}, scores={pickaxesLvl=..7}] run tag @s add slrequired

execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}, scores={gatheringLvl=..3}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}, scores={gatheringLvl=..4}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}, scores={gatheringLvl=..6}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}, scores={gatheringLvl=..3}] run tag @s add slrequired
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}, scores={gatheringLvl=..7}] run tag @s add slrequired
#execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}, scores={pickaxesLvl=..7}] run tag @s add slrequired





# ARMOR DEF\
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}, scores={defenseLvl=..6}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}, scores={defenseLvl=..6}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}, scores={defenseLvl=..6}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}, scores={defenseLvl=..6}] run tag @s add sldrequired

execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}, scores={defenseLvl=..4}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}, scores={defenseLvl=..4}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]}, scores={defenseLvl=..4}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}, scores={defenseLvl=..4}] run tag @s add sldrequired

execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}, scores={defenseLvl=..5}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}, scores={defenseLvl=..5}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}, scores={defenseLvl=..5}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}, scores={defenseLvl=..5}] run tag @s add sldrequired

execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}, scores={defenseLvl=..3}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}, scores={defenseLvl=..3}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}, scores={defenseLvl=..3}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}, scores={defenseLvl=..3}] run tag @s add sldrequired

execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}, scores={defenseLvl=..2}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}, scores={defenseLvl=..2}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}, scores={defenseLvl=..2}] run tag @s add sldrequired
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}, scores={defenseLvl=..2}] run tag @s add sldrequired

attribute @s[tag=sldrequired] generic.armor base set -20
attribute @s[tag=sldrequired] generic.armor_toughness base set -10

title @s[tag=sldrequired] actionbar {"text": "You do not meet the requirements to use your armor!","color": "red"}



# after

tag @s[gamemode=creative] remove slrequired
title @s[tag=slrequired] actionbar {"text": "You do not meet the requirements for this item!","color": "red"}

effect give @s[tag=slrequired] weakness 2 49 true
effect give @s[tag=slrequired] mining_fatigue 2 49 true


effect clear @s[tag=!slrequired] mining_fatigue
effect give @s[nbt=!{SelectedItem:{}}] mining_fatigue 1 4 true

effect give @s[tag=!slrequired] mining_fatigue infinite 1 true

effect clear @s[tag=!slrequired] weakness 
effect give @s[nbt=!{SelectedItem:{}}] weakness 1 255 true