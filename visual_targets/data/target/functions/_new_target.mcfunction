execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mlk_target_holder","new_target"],Passengers:[{id:"minecraft:text_display",text_opacity:50,text:"[{\"text\":\"     ♦\",\"color\":\"#ffffff\"}]",background:0,transformation:[3.0f,0.0f,0.0f,0.0f,0.0f,3.0f,0.0f,-0.5f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,1.0f],Tags:["mlk_target_2","mlk_target"],billboard:"center"},{id:"minecraft:text_display",text_opacity:0,text:"[{\"text\":\"     ♦\",\"color\":\"#ffffff\"}]",background:0,transformation:[-1.5f,-2.598f,0.0f,0.0f,2.598f,-1.5f,0.0f,-0.5f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,1.0f],Tags:["mlk_target_3","mlk_target"],billboard:"center"},{id:"minecraft:text_display",text_opacity:0,text:"[{\"text\":\"     ♦\",\"color\":\"#ffffff\"}]",background:0,transformation:[-1.5f,2.598f,0.0f,0.0f,-2.598f,-1.5f,0.0f,-0.5f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,1.0f],Tags:["mlk_target_1","mlk_target"],billboard:"center"}]}
execute at @s run ride @e[distance=..1,sort=nearest,limit=1,tag=mlk_target_holder] mount @s

execute on passengers as @s[tag=mlk_target_holder,tag=new_target] if data storage mlk:target {settings:{fade_in:0b}} on passengers run data merge entity @s[type=text_display] {text_opacity:-1}
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] if data storage mlk:target {settings:{see_through:1b}} on passengers run data merge entity @s[type=text_display] {see_through: 1b}
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] if data storage mlk:target {settings:{fade_in:1b}} on passengers run data modify entity @s[type=text_display] interpolation_duration set from storage mlk:target settings.fade_in_speed
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] if data storage mlk:target {settings:{fade_in:0b}} on passengers store result entity @s transformation.scale[0] float 0.1 run data get storage mlk:target settings.size 10
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] if data storage mlk:target {settings:{fade_in:0b}} on passengers store result entity @s transformation.scale[1] float 0.1 run data get storage mlk:target settings.size 10
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] if data storage mlk:target {settings:{fade_in:0b}} on passengers store result entity @s transformation.scale[2] float 0.1 run data get storage mlk:target settings.size 10

execute on passengers as @s[tag=mlk_target_holder,tag=new_target] on passengers run tag @s[tag=mlk_target] add mlk_first
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] on passengers run data modify entity @s[tag=mlk_first] text_opacity set from storage mlk:target settings.opacity
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] on passengers run data modify entity @s[tag=mlk_first] transformation.translation[1] set from storage mlk:target settings.offset
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] store result score @s mlk_target run data get storage mlk:target settings.fade_in_speed -1.0
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] on passengers as @s[tag=mlk_target] store result score @s mlk_target run data get storage mlk:target settings.speed -1.0
execute on passengers as @s[tag=mlk_target_holder,tag=new_target] run tag @s remove new_target
tag @s remove mlk_new_target

execute if entity @s[type=player] run tellraw @p [{"color":"red","text":"[MLK Targets] Targets cannot be added on players"}]