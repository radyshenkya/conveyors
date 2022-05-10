# Adding sort item to storage
data remove storage autodelic.sorting temp.id
data modify storage autodelic.sorting temp.id set from entity @s Item.id

# Comparing all items on current sorter
tag @s add current_sorter
execute positioned ~ ~1 ~ as @e[distance=..1, tag=item_on_belt] run function autodelic:private/_sort_compare_item
tag @s remove current_sorter