scoreboard players set @s ARatk 0
scoreboard players set @s[tag=easyMode] ARatk 1
scoreboard players add @s[scores={axesLvl=10..}] ARatk 1
scoreboard players add @s[scores={axesLvl=8..}] ARatk 1
scoreboard players add @s[scores={axesLvl=6..}] ARatk 1
#relics
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{tag:{RelicType:4,REatk:1}}]}] run scoreboard players add @s ARatk 1
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{tag:{RelicType:3,REatk:1}}]}] run scoreboard players add @s ARatk 1
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{tag:{RelicType:3,REatk:2}}]}] run scoreboard players add @s ARatk 2
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{tag:{RelicType:2,REatk:1}}]}] run scoreboard players add @s ARatk 1
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{tag:{RelicType:2,REatk:2}}]}] run scoreboard players add @s ARatk 2
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{tag:{RelicType:1,REatk:1}}]}] run scoreboard players add @s ARatk 1

# ARMOR STATAS
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1


# Relics
execute if entity @s[nbt={Inventory:[{tag:{RESatk:1}}]}] run function cmd:calcrelics/atk


execute as @s if entity @s[scores={ARatk=0}] run attribute @s generic.attack_damage base set -2
execute as @s if entity @s[scores={ARatk=1}] run attribute @s generic.attack_damage base set 0
execute as @s if entity @s[scores={ARatk=2}] run attribute @s generic.attack_damage base set 2
execute as @s if entity @s[scores={ARatk=3}] run attribute @s generic.attack_damage base set 4
execute as @s if entity @s[scores={ARatk=4}] run attribute @s generic.attack_damage base set 6
execute as @s if entity @s[scores={ARatk=5}] run attribute @s generic.attack_damage base set 8
execute as @s if entity @s[scores={ARatk=6}] run attribute @s generic.attack_damage base set 10
execute as @s if entity @s[scores={ARatk=7}] run attribute @s generic.attack_damage base set 12
execute as @s if entity @s[scores={ARatk=8}] run attribute @s generic.attack_damage base set 14
execute as @s if entity @s[scores={ARatk=9}] run attribute @s generic.attack_damage base set 16
execute as @s if entity @s[scores={ARatk=10}] run attribute @s generic.attack_damage base set 18
execute as @s if entity @s[scores={ARatk=11}] run attribute @s generic.attack_damage base set 20
execute as @s if entity @s[scores={ARatk=12..}] run attribute @s generic.attack_damage base set 22

