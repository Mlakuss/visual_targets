data modify entity @s[tag=mlk_first] transformation.scale[0] set from storage mlk:target settings.size
data modify entity @s[tag=mlk_first] transformation.scale[1] set from storage mlk:target settings.size
data modify entity @s[tag=mlk_first] transformation.scale[2] set from storage mlk:target settings.size
data modify entity @s[tag=mlk_first] view_range set from storage mlk:target settings.range
data modify entity @s[tag=mlk_first] transformation.translation[1] set from storage mlk:target settings.offset
data merge entity @s[tag=mlk_first] {start_interpolation:0}

tag @s[tag=mlk_first] remove mlk_first

execute if data storage mlk:target {settings:{speed:1}} run scoreboard players add @s mlk_target 1
execute if data storage mlk:target {settings:{speed:2}} run scoreboard players add @s mlk_target 2
execute if data storage mlk:target {settings:{speed:4}} run scoreboard players add @s mlk_target 4
execute if data storage mlk:target {settings:{speed:5}} run scoreboard players add @s mlk_target 5
execute if data storage mlk:target {settings:{speed:10}} run scoreboard players add @s mlk_target 10
execute if data storage mlk:target {settings:{speed:20}} run scoreboard players add @s mlk_target 20
execute if score @s mlk_target matches 600.. run scoreboard players set @s mlk_target 0

execute if score @s mlk_target matches 0 if data storage mlk:target {settings:{speed:1}} run data modify entity @s interpolation_duration set value 100
execute if score @s mlk_target matches 0 if data storage mlk:target {settings:{speed:2}} run data modify entity @s interpolation_duration set value 50
execute if score @s mlk_target matches 0 if data storage mlk:target {settings:{speed:4}} run data modify entity @s interpolation_duration set value 25
execute if score @s mlk_target matches 0 if data storage mlk:target {settings:{speed:5}} run data modify entity @s interpolation_duration set value 20
execute if score @s mlk_target matches 0 if data storage mlk:target {settings:{speed:10}} run data modify entity @s interpolation_duration set value 10
execute if score @s mlk_target matches 0 if data storage mlk:target {settings:{speed:20}} run data modify entity @s interpolation_duration set value 5

data merge entity @s[tag=mlk_target_1,scores={mlk_target=0}] {transformation:{left_rotation:[0.0f,0.0f,0.866f,0.5f]}}
data merge entity @s[tag=mlk_target_2,scores={mlk_target=0}] {transformation:{left_rotation:[0.0f,0.0f,0.866f,-0.5f]}}
data merge entity @s[tag=mlk_target_3,scores={mlk_target=0}] {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if entity @s[scores={mlk_target=0}] store result entity @s transformation.scale[0] float 0.08 run data get storage mlk:target settings.size 10
execute if entity @s[scores={mlk_target=0}] store result entity @s transformation.scale[1] float 0.08 run data get storage mlk:target settings.size 10
execute if entity @s[scores={mlk_target=0}] store result entity @s transformation.scale[2] float 0.08 run data get storage mlk:target settings.size 10
data merge entity @s[tag=mlk_target,scores={mlk_target=0}] {start_interpolation:0}

execute as @s[tag=mlk_target_1,scores={mlk_target=100}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1f]}}
execute as @s[tag=mlk_target_2,scores={mlk_target=100}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,0.5f]}}
execute as @s[tag=mlk_target_3,scores={mlk_target=100}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,-0.5f]}}
execute as @s[tag=mlk_target,scores={mlk_target=100}] store result entity @s transformation.scale[0] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=100}] store result entity @s transformation.scale[1] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=100}] store result entity @s transformation.scale[2] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=100}] run data merge entity @s {start_interpolation:0}

execute as @s[tag=mlk_target_1,scores={mlk_target=200}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,-0.5f]}}
execute as @s[tag=mlk_target_2,scores={mlk_target=200}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @s[tag=mlk_target_3,scores={mlk_target=200}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,0.5f]}}
execute if entity @s[scores={mlk_target=200}] store result entity @s transformation.scale[0] float 0.08 run data get storage mlk:target settings.size 10
execute if entity @s[scores={mlk_target=200}] store result entity @s transformation.scale[1] float 0.08 run data get storage mlk:target settings.size 10
execute if entity @s[scores={mlk_target=200}] store result entity @s transformation.scale[2] float 0.08 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=200}] run data merge entity @s {start_interpolation:0}

execute as @s[tag=mlk_target_1,scores={mlk_target=300}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,0.5f]}}
execute as @s[tag=mlk_target_2,scores={mlk_target=300}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,-0.5f]}}
execute as @s[tag=mlk_target_3,scores={mlk_target=300}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @s[tag=mlk_target,scores={mlk_target=300}] store result entity @s transformation.scale[0] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=300}] store result entity @s transformation.scale[1] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=300}] store result entity @s transformation.scale[2] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=300}] run data merge entity @s {start_interpolation:0}

execute as @s[tag=mlk_target_1,scores={mlk_target=400}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1f]}}
execute as @s[tag=mlk_target_2,scores={mlk_target=400}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,0.5f]}}
execute as @s[tag=mlk_target_3,scores={mlk_target=400}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,-0.5f]}}
execute as @s[tag=mlk_target,scores={mlk_target=400}] store result entity @s transformation.scale[0] float 0.08 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=400}] store result entity @s transformation.scale[1] float 0.08 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=400}] store result entity @s transformation.scale[2] float 0.08 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=400}] run data merge entity @s {start_interpolation:0}

execute as @s[tag=mlk_target_1,scores={mlk_target=500}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,-0.5f]}}
execute as @s[tag=mlk_target_2,scores={mlk_target=500}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @s[tag=mlk_target_3,scores={mlk_target=500}] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.866f,0.5f]}}
execute as @s[tag=mlk_target,scores={mlk_target=500}] store result entity @s transformation.scale[0] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=500}] store result entity @s transformation.scale[1] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=500}] store result entity @s transformation.scale[2] float 0.1 run data get storage mlk:target settings.size 10
execute as @s[tag=mlk_target,scores={mlk_target=500}] run data merge entity @s {start_interpolation:0}