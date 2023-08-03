scoreboard players set @s currentStatus 20

damage @s[scores={ARdef=0}] 10 generic
damage @s[scores={ARdef=1}] 9 generic
damage @s[scores={ARdef=2}] 8 generic
damage @s[scores={ARdef=3}] 7 generic
damage @s[scores={ARdef=4}] 6 generic
damage @s[scores={ARdef=5}] 5 generic
damage @s[scores={ARdef=6}] 4 generic
damage @s[scores={ARdef=7}] 3 generic
damage @s[scores={ARdef=8..}] 2 generic



# spreadplayers ~ ~ 3 5 false @s
# tp @s ~ ~2 ~1
summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Blast","color":"#555555","bold":true,"italic":false}',background:268435456}

scoreboard players add @s staggeredtime 30
scoreboard players add @s puncturedtime 30

effect clear @s levitation
effect clear @s nausea