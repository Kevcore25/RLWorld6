# When died
# Kevcore 2023/07/25

# Patch respawn glitch #2 (respawn will not work if far away) by loading the chunk at all times
forceload add ~ ~
# If marker not detected
execute unless entity @e[type=marker,tag=playerrespawn] run say Error: unable to detect marker in server, aborting. please report
execute unless entity @e[type=marker,tag=playerrespawn] run execute in the_end run tp @s 1000 100 1000
execute unless entity @e[type=marker,tag=playerrespawn] run tag @s remove playerrespawn
execute unless entity @e[type=marker,tag=playerrespawn] run gamemode survival
execute unless entity @e[type=marker,tag=playerrespawn] run return 0

# Limit only to beta testers for testing
# execute unless entity @s[tag=betaTester] run return 0

# add temp var and set it to amount of totems in inv
scoreboard objectives add PRtemp dummy
execute store result score @s PRtemp run clear @s totem_of_undying 0

# patch glitch #1 (cannot see title because of stamina)
scoreboard players set @s stamina 100

# Give blindness. Optional
effect give @s blindness 2 0 true

# revive
#execute unless entity @e[type=interaction,tag=reviveuser,distance=..1] run summon interaction ~ ~ ~ {response:true,Tags:[reviveuser],CustomNameVisible:1b,width:2.5f,height:0.5f,CustomName:'[{"text":"-3 ♥ ","color":"red"},{"text":"Revive User","color":"green"},{"text":" (","color":"red"},{"keybind":"key.use","color":"gray"},{"text":")","color":"red"}]'}

execute as @e[type=interaction,distance=..1,tag=reviveuser] if entity @a[distance=..1,tag=playerrespawn] on target run damage @p[tag=!playerrespawn] 2 out_of_world
execute as @e[type=interaction,distance=..1,tag=reviveuser] if entity @a[distance=..1,tag=playerrespawn] on target run gamemode survival @p[tag=playerrespawn]
execute as @e[type=interaction,distance=..1,tag=reviveuser] if entity @a[distance=..1,tag=playerrespawn] on target as @p[tag=playerrespawn] run function cmd:diedhp
execute as @e[type=interaction,distance=..1,tag=reviveuser] if entity @a[distance=..1,tag=playerrespawn] on target run tag @p[tag=playerrespawn] add PR-done
execute as @e[type=interaction,distance=..1,tag=reviveuser] if entity @a[distance=..1,tag=playerrespawn] on target run kill @e[type=marker,tag=playerrespawn,distance=..10,sort=nearest,limit=1]
execute as @e[type=interaction,distance=..1,tag=reviveuser] if entity @a[distance=..1,tag=playerrespawn] on target run kill @e[type=interaction,distance=..1,tag=reviveuser]
execute as @e[type=interaction,distance=..1,tag=reviveuser] unless entity @a[distance=..1,tag=playerrespawn] on target run tellraw @p[tag=!playerrespawn] [{"selector":"@p[tag=playerrespawn]","color": "green"},{"text": " must click the respawn button first.\nThis is a bug that cannot be fixed.","color": "red"}]
execute as @e[type=interaction,distance=..1,tag=reviveuser] unless entity @a[distance=..1,tag=playerrespawn] on target run data remove entity @e[type=interaction,distance=..1,tag=reviveuser,limit=1] interaction

# Title player
title @s times 0 20 5
title @s title {"text": "You died!","color": "red"}
title @s[scores={PRtemp=0}] subtitle [{"text": "Hold ","color": "gray"},{"keybind":"key.jump","color":"yellow"},{"text":" to respawn. ","color":"gray"}]
title @s[scores={PRtemp=1..}] subtitle [{"text": "Hold ","color": "gray"},{"keybind":"key.jump","color":"yellow"},{"text":" to respawn, or ","color":"gray"},{"keybind":"key.sneak","color":"yellow"},{"text":" to use totem (","color":"gray"},{"score":{"name":"@s","objective":"PRtemp"},"color":"yellow"},{"text":" left","color":"yellow"},{"text":")","color":"gray"}]

# Set mode to spectator so mobs can't see  and unable to interact with world
gamemode spectator @s

# add temp. This temp tag will allow the marker to detect player
tag @s add PR-temp

# Teleport nearest player to marker. If the player teleports to another player while another player dies, this can result in bugs!
execute unless entity @e[type=marker,tag=playerrespawn,distance=..0.3] run execute as @e[type=marker,tag=playerrespawn] if score @s tpa.pid = @a[tag=PR-temp,limit=1,sort=nearest] tpa.pid run tp @a[tag=PR-temp,limit=1,sort=nearest] @s

# Detect shift/space
execute positioned ~ ~4 ~ if entity @e[tag=playerrespawn,distance=..3.75] run tag @s add PR-down
execute positioned ~ ~-4 ~ if entity @e[type=marker,tag=playerrespawn,distance=..3.75] run tag @s add PR-up

# If flew down and wants to use totem:
execute as @s[tag=PR-down,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run execute as @e[type=marker,tag=playerrespawn] if score @s tpa.pid = @a[tag=PR-temp,limit=1,sort=nearest] tpa.pid run tp @a[tag=PR-temp,limit=1,sort=nearest] @s
execute as @s[tag=PR-down,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run kill @e[type=marker,tag=playerrespawn,distance=..10,sort=nearest,limit=1]
execute as @s[tag=PR-down,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run tag @s add PR-done
execute as @s[tag=PR-down,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run clear @s totem_of_undying 1

# If wants to respawn:
execute as @s[tag=PR-up] run kill @e[type=marker,tag=playerrespawn,distance=..10,sort=nearest,limit=1]
execute as @s[tag=PR-up] run forceload remove ~ ~
#execute as @s[tag=PR-up] run execute in the_end run tp @s 1000 100 1000
execute as @s[tag=PR-up] if entity @s[scores={myrandom=0..3},nbt={Inventory:[{tag:{Volunteerer:1}}]}] in overworld run tp @s 88.66 54.00 95.98
execute as @s[tag=PR-up] unless entity @s[scores={myrandom=0..3},nbt={Inventory:[{tag:{Volunteerer:1}}]}] in overworld run spreadplayers 0 0 50 100 false @s
execute as @s[tag=PR-up] run tag @s add PR-done

# Respawning commands
execute as @s[tag=PR-done] run gamemode survival
execute as @s[tag=PR-done] run kill @e[type=interaction,distance=..1,tag=reviveuser]
execute as @s[tag=PR-done] run tag @s remove playerrespawn
execute as @s[tag=PR-done] run title @s title {"text": "Respawned!","color": "green"}
execute as @s[tag=PR-done] run title @s[tag=PR-up] subtitle {"text": "Teleported near spawn","color": "gray"}
execute as @s[tag=PR-done] run title @s[tag=PR-up,scores={myrandom=0..3},nbt={Inventory:[{tag:{Volunteerer:1}}]}] subtitle {"text": "Teleported to Public Base","color": "gray"}
execute as @s[tag=PR-done] run title @s[tag=PR-down] subtitle {"text": "Revived and lost 1 Totem of Undying","color": "gray"}

execute as @s[tag=PR-done] run scoreboard players add @s shields 50
execute as @s[tag=PR-done] run forceload remove ~ ~

# Remove all function tags
tag @s remove PR-temp
tag @s remove PR-down
tag @s remove PR-done
tag @s remove PR-up

