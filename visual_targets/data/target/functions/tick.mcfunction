execute as @e[tag=mlk_target_holder] at @s run function target:target
execute as @e[tag=mlk_new_target,tag=!mlk_target_holder] at @s run function target:_new_target
execute as @e[tag=mlk_kill_target] at @s run function target:_remove_target