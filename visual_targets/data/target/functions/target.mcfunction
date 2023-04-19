scoreboard players add @s[scores={mlk_target=..-1}] mlk_target 1
execute if entity @s[scores={mlk_target=..0}] on passengers as @s[tag=mlk_target] run function target:rotation
scoreboard players add @s[scores={mlk_target=0..},tag=remove_target] mlk_target 1

execute as @s[scores={mlk_target=1}] on passengers run data merge entity @s {transformation:{scale:[5.0f,5.0f,5.0f]},text_opacity:50,start_interpolation:1}
execute as @s[scores={mlk_target=1}] if data storage mlk:target {settings:{fade_out:1b}} run data modify entity @s interpolation_duration set from storage mlk:target settings.fade_out_speed
execute as @s[scores={mlk_target=1}] if data storage mlk:target {settings:{fade_out:0b}} run scoreboard players set @s mlk_target 10
execute as @s[scores={mlk_target=1}] if data storage mlk:target {settings:{fade_out:1b}} run data merge entity @s {start_interpolation:0}
execute as @s[scores={mlk_target=10..}] on passengers run kill @s[tag=mlk_target]
kill @s[scores={mlk_target=10..}]

execute as @s on vehicle on passengers run tag @s[tag=mlk_target_holder] add nokill
execute as @s[tag=!nokill] on passengers run kill @s
kill @s[tag=!nokill]
tag @s[tag=nokill] remove nokill