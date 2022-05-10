# Deleting empty armor stands
execute as @e[type=armor_stand,tag=item_on_belt] unless data entity @s HandItems[0].id run kill @s

# Adding 1 to update counter of conveyors
scoreboard players add autodelic.belt_move_counter autodelic.tick_counter 1

# Block breaking functions tick
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=item_frame,nbt={Item:{id:"minecraft:iron_pickaxe"}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #autodelic:block_destroying run function autodelic:private/_mine

# Items moving tick
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=armor_stand,tag=item_on_belt] at @s if block ~ ~ ~ #autodelic:conveyor run function autodelic:private/_item_move
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=item_frame,nbt={Item:{tag:{display:{Name:'{"text":"sort"}'}}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #autodelic:conveyor run function autodelic:private/_sort
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=item_frame,nbt={Item:{tag:{display:{Name:'{"text":"unload one"}'}}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #autodelic:conveyor run function autodelic:private/_unloader_one
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=item_frame,nbt={Item:{tag:{display:{Name:'{"text":"unload stack"}'}}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #autodelic:conveyor run function autodelic:private/_unloader_stack
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=item_frame,nbt={Item:{tag:{display:{Name:'{"text":"split"}'}}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #autodelic:conveyor run function autodelic:private/_split
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move run scoreboard players set autodelic.belt_move_counter autodelic.tick_counter 0

# Replacing items on conveyor belts with armor stands
execute as @e[type=item] at @s align xyz if block ~ ~-1 ~ #autodelic:item_acceptable run function autodelic:private/_item_enter

# Dropping items from armor stands that not on conveyor belts
execute as @e[type=armor_stand, tag=item_on_belt] at @s unless block ~ ~ ~ #autodelic:item_acceptable run function autodelic:private/_item_drop