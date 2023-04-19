data modify storage mlk:target settings.speed set value 5
scoreboard players set @e[tag=mlk_target] mlk_target 0
tellraw @s {"text":"Rotation Speed set to: Normal"}
function target:_settings