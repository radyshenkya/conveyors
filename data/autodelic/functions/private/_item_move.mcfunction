# Перебираем все вариантики глейзед терракота
execute if block ~ ~ ~ #autodelic:conveyor[facing=east] positioned ~1 ~ ~ run tp ~ ~ ~
execute if block ~ ~ ~ #autodelic:conveyor[facing=south] positioned ~ ~ ~1 run tp ~ ~ ~
execute if block ~ ~ ~ #autodelic:conveyor[facing=west] positioned ~-1 ~ ~ run tp ~ ~ ~
execute if block ~ ~ ~ #autodelic:conveyor[facing=north] positioned ~ ~ ~-1 run tp ~ ~ ~