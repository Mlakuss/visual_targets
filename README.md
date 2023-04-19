# Visual Targets
Minecraft datapack adding a custom targeting system

With the datapack installed, you can add visual effects on the entities of your choice (except players).  
The visual effect is made of 3 rotating  text_display entities.

##Usage

* Access tot he customization settings with the following command:

    /function target:_settings

Size and speed parameters, once modified, will also affect existing targets. All other settings will only be applied to newly made targets.

Settings available: Target size, Target opacity, Rotation speed, Fade in and Fade out effects, See through blocks and view range.

* Adding a target to an existing entity:

    /execute as @e[type=!player,limit=1] run function target:_new_target

Targets are made of one armor stand with the tag "mlk_target_holder" with three passengers. When adding a target, the armor stand will be riding the selected entity.

Targets are automatically destroyed when the entity die.

* Removing a target:

    /execute as @e[type=!player,limit=1] run function target:_remove_target
    
##Uninstalling the datapack

Run the function /function target:uninstall to clear the storage and kill targets in range. You can then disable the datapack.
