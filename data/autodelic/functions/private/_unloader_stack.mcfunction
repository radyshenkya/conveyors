# WEST
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] if data block ~-1 ~ ~ Items[0] align xyz positioned ~ ~1 ~ run summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["item_on_belt", "new_unloaded_item"], Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] if data block ~-1 ~ ~ Items[0] run data modify entity @e[tag=new_unloaded_item,limit=1] HandItems[0] set from block ~-1 ~ ~ Items[0]
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] if data block ~-1 ~ ~ Items[0] run data remove block ~-1 ~ ~ Items[0]
tag @e[tag=new_unloaded_item] remove new_unloaded_item

# EAST
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] if data block ~1 ~ ~ Items[0] align xyz positioned ~ ~1 ~ run summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["item_on_belt", "new_unloaded_item"], Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] if data block ~1 ~ ~ Items[0] run data modify entity @e[tag=new_unloaded_item,limit=1] HandItems[0] set from block ~1 ~ ~ Items[0]
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] if data block ~1 ~ ~ Items[0] run data remove block ~1 ~ ~ Items[0]
tag @e[tag=new_unloaded_item] remove new_unloaded_item

# SOUTH
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] if data block ~ ~ ~1 Items[0] align xyz positioned ~ ~1 ~ run summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["item_on_belt", "new_unloaded_item"], Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] if data block ~ ~ ~1 Items[0] run data modify entity @e[tag=new_unloaded_item,limit=1] HandItems[0] set from block ~ ~ ~1 Items[0]
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] if data block ~ ~ ~1 Items[0] run data remove block ~ ~ ~1 Items[0]
tag @e[tag=new_unloaded_item] remove new_unloaded_item

# NORTH
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] if data block ~ ~ ~-1 Items[0] align xyz positioned ~ ~1 ~ run summon armor_stand ~0.85 ~-0.8 ~0.1 {Tags:["item_on_belt", "new_unloaded_item"], Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[345f,0f,0f]}}
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] if data block ~ ~ ~-1 Items[0] run data modify entity @e[tag=new_unloaded_item,limit=1] HandItems[0] set from block ~ ~ ~-1 Items[0]
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] if data block ~ ~ ~-1 Items[0] run data remove block ~ ~ ~-1 Items[0]
tag @e[tag=new_unloaded_item] remove new_unloaded_item