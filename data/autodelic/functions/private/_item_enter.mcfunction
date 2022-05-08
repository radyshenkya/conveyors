tag @s add new_belt_item_entry

summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["new_belt_item", "item_on_belt"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}

data modify entity @e[limit=1, type=armor_stand, tag=new_belt_item] HandItems[0] set from entity @e[type=item,tag=new_belt_item_entry,limit=1] Item

tag @e[type=armor_stand, tag=new_belt_item] remove new_belt_item
kill @s