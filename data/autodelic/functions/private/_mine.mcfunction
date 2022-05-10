execute if block ~ ~ ~ #autodelic:block_destroying[facing=east] if block ~1 ~ ~ #autodelic:can_mine run setblock ~1 ~ ~ air destroy
execute if block ~ ~ ~ #autodelic:block_destroying[facing=west] if block ~-1 ~ ~ #autodelic:can_mine run setblock ~-1 ~ ~ air destroy
execute if block ~ ~ ~ #autodelic:block_destroying[facing=north] if block ~ ~ ~-1 #autodelic:can_mine run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~ #autodelic:block_destroying[facing=south] if block ~ ~ ~1 #autodelic:can_mine run setblock ~ ~ ~1 air destroy
execute if block ~ ~ ~ #autodelic:block_destroying[facing=up] if block ~ ~1 ~ #autodelic:can_mine run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~ #autodelic:block_destroying[facing=down] if block ~ ~-1 ~ #autodelic:can_mine run setblock ~ ~-1 ~ air destroy