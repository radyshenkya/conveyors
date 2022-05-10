# Trying to write down item's id from hand[0] to comparing storage
execute store success score @s autodelic.temp run data modify storage autodelic.sorting temp.id set from entity @s HandItems[0].id

execute if score @s autodelic.temp matches 0 at @s if block ~ ~ ~ #autodelic:conveyor[facing=north] run tp ~ ~ ~-1
execute if score @s autodelic.temp matches 0 at @s if block ~ ~ ~ #autodelic:conveyor[facing=south] run tp ~ ~ ~1
execute if score @s autodelic.temp matches 0 at @s if block ~ ~ ~ #autodelic:conveyor[facing=east] run tp ~1 ~ ~
execute if score @s autodelic.temp matches 0 at @s if block ~ ~ ~ #autodelic:conveyor[facing=west] run tp ~-1 ~ ~


execute if score @s autodelic.temp matches 1.. at @s if block ~ ~ ~ #autodelic:conveyor[facing=north] run tp ~1 ~ ~
execute if score @s autodelic.temp matches 1.. at @s if block ~ ~ ~ #autodelic:conveyor[facing=south] run tp ~-1 ~ ~
execute if score @s autodelic.temp matches 1.. at @s if block ~ ~ ~ #autodelic:conveyor[facing=east] run tp ~ ~ ~1
execute if score @s autodelic.temp matches 1.. at @s if block ~ ~ ~ #autodelic:conveyor[facing=west] run tp ~ ~ ~-1