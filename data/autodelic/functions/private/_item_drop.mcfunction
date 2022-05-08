tag @s add belt_armor_stand_to_delete

execute align xyz run summon item ~0.5 ~1.1 ~0.5 {Tags:["dropped_from_belt"],Item:{id:"minecraft:dirt", Count:1b}}

data modify entity @e[limit=1, type=item, tag=dropped_from_belt] Item set from entity @e[type=armor_stand,tag=belt_armor_stand_to_delete, limit=1] HandItems[0]

tag @e[type=item, tag=dropped_from_belt] remove dropped_from_belt
kill @s