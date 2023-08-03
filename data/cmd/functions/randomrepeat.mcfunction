
execute if score #amt tempRandomgen < #max tempRandomgen run summon minecraft:armor_stand 100 100 100 {Invisible:1,Invulnerable:1b,Tags:[randomGen,important]}
execute if score #amt tempRandomgen < #max tempRandomgen run scoreboard players operation @e[type=armor_stand,tag=!finished] tempRandomgen = #amt tempRandomgen
execute if score #amt tempRandomgen < #max tempRandomgen run tag @e[type=armor_stand,tag=!finished] add finished
execute if score #amt tempRandomgen < #max tempRandomgen run scoreboard players add #amt tempRandomgen 1
execute if score #amt tempRandomgen < #max tempRandomgen run function cmd:randomrepeat
execute if score #amt tempRandomgen >= #max tempRandomgen run function cmd:randomdone

