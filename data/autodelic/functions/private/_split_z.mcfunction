# Создаем 2 стойки (новые айтемы типо будут)
execute at @s align xyz positioned ~-1 ~1 ~ run summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["split_1", "item_on_belt"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}
execute at @s align xyz positioned ~1 ~1 ~ run summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["split_2", "item_on_belt"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}

# Присваем стойкам айтемы.
data modify entity @e[tag=split_1,limit=1] HandItems[0] set from entity @s HandItems[0]
data modify entity @e[tag=split_2,limit=1] HandItems[0] set from entity @s HandItems[0]

# Сторим кол-во предметов
execute store result score @s autodelic.temp run data get entity @s HandItems[0].Count

# Присваеваем первой стойке половинку предметов
execute store result entity @e[tag=split_1,limit=1] HandItems[0].Count int 0.5 run scoreboard players get @s autodelic.temp

# Отнимаем кол-во предметов первой стойки из всех предметов
execute store result score @e[tag=split_1,limit=1] autodelic.temp run data get entity @e[tag=split_1,limit=1] HandItems[0].Count
scoreboard players operation @s autodelic.temp -= @e[tag=split_1,limit=1] autodelic.temp

# Присваеваем второй стойке кол-во предметов
execute store result entity @e[tag=split_2,limit=1] HandItems[0].Count int 1 run scoreboard players get @s autodelic.temp

# Удаляем тэги, и оригинальную стойку
tag @e[tag=split_1] remove split_1
tag @e[tag=split_2] remove split_2
kill @s