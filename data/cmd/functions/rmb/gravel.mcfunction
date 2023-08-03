
execute if entity @s[scores={myrandom=1..2}] run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:1b}}

scoreboard players remove @s stamina. 5000
tag @s add staminachange

summon item ~ ~ ~ {Item:{id:"minecraft:coarse_dirt",Count:1b}}
setblock ~ ~ ~ air

#mimic block destruction
execute align xyz run particle block gravel ~.5 ~.5 ~.5 0.25 0.25 0.25 0 500 normal
playsound block.gravel.break player @a
# execute if block ^ ^0.5 ^2 gravel unless block ^ ^0.5 ^1 gravel run summon item ^ ^0.5 ^1 {Item:{id:"minecraft:coarse_dirt",Count:1b}}
# execute if block ^ ^0.5 ^1 gravel unless block ^ ^0.5 ^2 gravel run say 2nd!!
# execute if block ^ ^0.5 ^2 gravel unless block ^ ^0.5 ^1 gravel run setblock ^ ^0.5 ^2 air
