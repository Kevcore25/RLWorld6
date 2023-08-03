execute as @e[type=armor_stand,tag=waypointEntity,distance=1.6..] if score @s tpa.pid = @p tpa.pid run tag @s add waypointer
tp @s @e[type=armor_stand,tag=waypointer,limit=1,sort=random]
particle portal ~ ~0.25 ~ 0 0 0 2 300 
tag @s add waypointed
