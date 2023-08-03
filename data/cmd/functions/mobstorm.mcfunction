execute at @a positioned ~ ~10 ~10 run function cmd:randommobs

execute at @a run summon creeper
execute at @a run summon skeleton
execute at @a run summon witch
execute at @a run summon zombie
execute at @a run summon spider

title @a title {"text": "MOB STORM!!!!","color": "gold"}
title @a times 5 100 5

tellraw @a {"text": "\nEVENT: MOB STORM!\nRandom mobs will spawn on players!\n","color": "red"}