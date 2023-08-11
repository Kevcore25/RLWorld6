# PARTICLE
particle minecraft:dust 0.5 1 0.5 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 30

# DMG
execute if entity @p[distance=..7,scores={ARatk=1}] run damage @s 5 magic by @p
execute if entity @p[distance=..7,scores={ARatk=2}] run damage @s 7 magic by @p
execute if entity @p[distance=..7,scores={ARatk=3}] run damage @s 9 magic by @p
execute if entity @p[distance=..7,scores={ARatk=4}] run damage @s 11 magic by @p
execute if entity @p[distance=..7,scores={ARatk=5}] run damage @s 13 magic by @p
execute if entity @p[distance=..7,scores={ARatk=6}] run damage @s 15 magic by @p
execute if entity @p[distance=..7,scores={ARatk=7}] run damage @s 17 magic by @p
execute if entity @p[distance=..7,scores={ARatk=8..}] run damage @s 19 magic by @p
damage @s 3 magic by @p