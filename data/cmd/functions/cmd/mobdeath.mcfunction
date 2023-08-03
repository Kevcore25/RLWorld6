
kill @e[type=experience_bottle,distance=..3]
summon experience_orb

execute at @s if block ~ 127 ~ bedrock run tag @r add mdnethertemp

execute as @a[tag=mdnethertemp] run function cmd:cmd/calccrit100
execute as @a[tag=mdnethertemp,scores={random100=0..100}] run function cmd:artifacts/common
#execute as @a[tag=mdnethertemp,scores={random100=0..3}] run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",Count:1b,tag:{EBook:1,Unb:-1,display:{Name:'[{"text":"Unbreakable Enchantment","italic":false,"color":"gold"}]',Lore:['[{"text":"Throw together with an item to","italic":false,"color":"gray"}]','[{"text":"grant it the Unbreakable tag.","italic":false,"color":"gray"}]']}}}}
tag @a remove mdnethertemp
kill @s

