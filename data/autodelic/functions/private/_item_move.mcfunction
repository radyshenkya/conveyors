# Перебираем все вариантики глейзед терракота
execute if block ~ ~ ~ grindstone[facing=east] positioned ~1 ~ ~ run tp ~ ~ ~
execute if block ~ ~ ~ grindstone[facing=south] positioned ~ ~ ~1 run tp ~ ~ ~
execute if block ~ ~ ~ grindstone[facing=west] positioned ~-1 ~ ~ run tp ~ ~ ~
execute if block ~ ~ ~ grindstone[facing=north] positioned ~ ~ ~-1 run tp ~ ~ ~