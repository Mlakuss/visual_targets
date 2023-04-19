data modify storage mlk:target settings.speed set value 2
scoreboard players set @e[tag=mlk_target] mlk_target 0
tellraw @s {"text":"Rotation Speed set to: Very Slow"}
function target:_settings