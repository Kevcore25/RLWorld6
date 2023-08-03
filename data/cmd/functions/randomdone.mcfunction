schedule function cmd:randomdone 1t replace

#tp @e[tag=randomGen] 0 -59 0
#tp @e[tag=randomGen,sort=random,limit=1] 0 -63 0

scoreboard players operation @a[tag=!spectating] myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
