# Прибавляем тик для белтов
scoreboard players add autodelic.belt_move_counter autodelic.tick_counter 1

# тик функции попадания айтемов на ленту
execute as @e[type=item] at @s align xyz if block ~ ~-1 ~ #autodelic:item_acceptable run function autodelic:private/_item_enter

# делаем тик функций передвижения
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move as @e[type=armor_stand,tag=item_on_belt] at @s if block ~ ~ ~ magenta_glazed_terracotta run function autodelic:private/_item_move
execute if score autodelic.belt_move_counter autodelic.tick_counter >= autodelic.settings autodelic.ticks_before_move run scoreboard players set autodelic.belt_move_counter autodelic.tick_counter 0
# Потом делаем тик функции выпадения айтемов
execute as @e[type=armor_stand, tag=item_on_belt] at @s unless block ~ ~ ~ #autodelic:item_acceptable run function autodelic:private/_item_drop