execute if entity @s[type=!player] if entity @s[type=!interaction] if entity @s[type=!ender_pearl] if entity @s[type=!item_display] if entity @s[type=!potion] if entity @s[type=!trident] if entity @s[type=!block_display] if entity @s[type=!area_effect_cloud] if entity @s[type=!shulker_bullet] if entity @s[type=!skeleton] if entity @s[type=!item,tag=!natureCore] if entity @s[type=!armor_stand] if entity @s[type=!text_display] if entity @s[type=!#arrows] if entity @s[type=!fireball] if entity @s[type=!small_fireball] run tag @s add showhealth

execute store result score @s mobhp run data get entity @s Health


scoreboard players set @s maxhp 20

scoreboard players set @s[type=pillager] maxhp 32
scoreboard players set @s[type=horse] maxhp 40
scoreboard players set @s[type=shulker] maxhp 60
scoreboard players set @s[type=pig] maxhp 10
scoreboard players set @s[type=cow] maxhp 10
scoreboard players set @s[type=sheep] maxhp 8
scoreboard players set @s[type=enderman] maxhp 40
scoreboard players set @s[type=iron_golem] maxhp 100
scoreboard players set @s[type=spider] maxhp 28
scoreboard players set @s[type=evoker] maxhp 60
scoreboard players set @s[type=skeleton] maxhp 40
scoreboard players set @s[type=villager] maxhp 100
scoreboard players set @s[type=wither] maxhp 300
scoreboard players set @s[type=drowned] maxhp 100

execute at @s if block ~ 127 ~ bedrock run scoreboard players set @s maxhp 500

scoreboard players operation @s mobhptemp = @s mobhp
scoreboard players operation @s mobhptemp *= 100 intnumbers
scoreboard players operation @s mobhptemp /= @s maxhp

## PERCENTAGE
execute if entity @s[scores={mobhptemp=0..20},tag=showhealth] run function cmd:showhealth/one
execute if entity @s[scores={mobhptemp=21..40},tag=showhealth] run function cmd:showhealth/two
execute if entity @s[scores={mobhptemp=41..60},tag=showhealth] run function cmd:showhealth/three
execute if entity @s[scores={mobhptemp=61..80},tag=showhealth] run function cmd:showhealth/four
execute if entity @s[scores={mobhptemp=81..},tag=showhealth] run function cmd:showhealth/five

## BAR
# execute if entity @s[scores={mobhptemp=0..10}] run data merge entity @s {CustomName:'[{"text":"♥ █","color":"red"},{"text":"█████████","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=11..20}] run data merge entity @s {CustomName:'[{"text":"♥ ██","color":"red"},{"text":"████████","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=21..30}] run data merge entity @s {CustomName:'[{"text":"♥ ███","color":"red"},{"text":"███████","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=31..40}] run data merge entity @s {CustomName:'[{"text if entity @s[type=!armor_stand] ":"♥ ████","color":"red"},{"text":"██████","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=41..50}] run data merge entity @s {CustomName:'[{"text":"♥ █████","color":"red"},{"text":"█████","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=51..60}] run data merge entity @s {CustomName:'[{"text":"♥ ██████","color":"red"},{"text":"████","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=61..70}] run data merge entity @s {CustomName:'[{"text":"♥ ███████","color":"red"},{"text":"███","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=71..80}] run data merge entity @s {CustomName:'[{"text":"♥ ████████","color":"red"},{"text":"██","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=81..90}] run data merge entity @s {CustomName:'[{"text":"♥ █████████","color":"red"},{"text":"█","color":"gray"}]'}
# execute if entity @s[scores={mobhptemp=91..}] run data merge entity @s {CustomName:'[{"text":"♥ ██████████","color":"red"},{"text":"","color":"gray"}]'}


# execute if entity @s[scores={mobhp=0}] run data merge entity @s {CustomName:'{"text":"♥ 0","color":"red"}'}
# execute if entity @s[scores={mobhp=1}] run data merge entity @s {CustomName:'{"text":"❤ 0.5","color":"red"}'}
# execute if entity @s[scores={mobhp=2}] run data merge entity @s {CustomName:'{"text":"❤ 1","color":"red"}'}
# execute if entity @s[scores={mobhp=3}] run data merge entity @s {CustomName:'{"text":"❤ 1.5","color":"red"}'}
# execute if entity @s[scores={mobhp=4}] run data merge entity @s {CustomName:'{"text":"❤ 2","color":"red"}'}
# execute if entity @s[scores={mobhp=5}] run data merge entity @s {CustomName:'{"text":"❤ 2.5","color":"red"}'}
# execute if entity @s[scores={mobhp=6}] run data merge entity @s {CustomName:'{"text":"❤ 3","color":"red"}'}
# execute if entity @s[scores={mobhp=7}] run data merge entity @s {CustomName:'{"text":"❤ 3.5","color":"red"}'}
# execute if entity @s[scores={mobhp=8}] run data merge entity @s {CustomName:'{"text":"❤ 4","color":"red"}'}
# execute if entity @s[scores={mobhp=9}] run data merge entity @s {CustomName:'{"text":"❤ 4.5","color":"red"}'}
# execute if entity @s[scores={mobhp=10}] run data merge entity @s {CustomName:'{"text":"❤ 5","color":"red"}'}

# execute if entity @s[scores={mobhp=11}] run data merge entity @s {CustomName:'{"text":"❤ 5.5","color":"red"}'}
# execute if entity @s[scores={mobhp=12}] run data merge entity @s {CustomName:'{"text":"❤ 6","color":"red"}'}
# execute if entity @s[scores={mobhp=13}] run data merge entity @s {CustomName:'{"text":"❤ 6.5","color":"red"}'}
# execute if entity @s[scores={mobhp=14}] run data merge entity @s {CustomName:'{"text":"❤ 7","color":"red"}'}
# execute if entity @s[scores={mobhp=15}] run data merge entity @s {CustomName:'{"text":"❤ 7.5","color":"red"}'}
# execute if entity @s[scores={mobhp=16}] run data merge entity @s {CustomName:'{"text":"❤ 8","color":"red"}'}
# execute if entity @s[scores={mobhp=17}] run data merge entity @s {CustomName:'{"text":"❤ 8.5","color":"red"}'}
# execute if entity @s[scores={mobhp=18}] run data merge entity @s {CustomName:'{"text":"❤ 9","color":"red"}'}
# execute if entity @s[scores={mobhp=19}] run data merge entity @s {CustomName:'{"text":"❤ 9.5","color":"red"}'}
# execute if entity @s[scores={mobhp=20}] run data merge entity @s {CustomName:'{"text":"❤ 10","color":"red"}'}
# execute if entity @s[scores={mobhp=21}] run data merge entity @s {CustomName:'{"text":"❤ 10.5","color":"red"}'}

# execute if entity @s[scores={mobhp=22}] run data merge entity @s {CustomName:'{"text":"♥ 11","color":"red"}'}
# execute if entity @s[scores={mobhp=23..24}] run data merge entity @s {CustomName:'{"text":"♥ 12","color":"red"}'}
# execute if entity @s[scores={mobhp=25..26}] run data merge entity @s {CustomName:'{"text":"♥ 13","color":"red"}'}
# execute if entity @s[scores={mobhp=27..28}] run data merge entity @s {CustomName:'{"text":"♥ 14","color":"red"}'}
# execute if entity @s[scores={mobhp=29..30}] run data merge entity @s {CustomName:'{"text":"♥ 15","color":"red"}'}
# execute if entity @s[scores={mobhp=31..32}] run data merge entity @s {CustomName:'{"text":"♥ 16","color":"red"}'}
# execute if entity @s[scores={mobhp=33..34}] run data merge entity @s {CustomName:'{"text":"♥ 17","color":"red"}'}
# execute if entity @s[scores={mobhp=35..36}] run data merge entity @s {CustomName:'{"text":"♥ 18","color":"red"}'}
# execute if entity @s[scores={mobhp=37..38}] run data merge entity @s {CustomName:'{"text":"♥ 19","color":"red"}'}
# execute if entity @s[scores={mobhp=39..40}] run data merge entity @s {CustomName:'{"text":"♥ 20","color":"red"}'}
execute if entity @s[nbt=!{CustomNameVisible:1b},tag=showhealth] run tellraw @a[tag=debuger] [{"text": "[ShowHealth] Showing HP for ","color": "gray"},{"selector":"@s"},{"text": "","color": "gray"}]
data merge entity @s[tag=showhealth] {CustomNameVisible:1b}
