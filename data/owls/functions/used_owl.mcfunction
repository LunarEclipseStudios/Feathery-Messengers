execute unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run function owls:owl_delivery_options
execute unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run tag @s add sender
execute unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run tag @e[type=allay,tag=owl,sort=nearest,limit=1,tag=!active] add select
execute unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run data merge entity @e[type=allay,tag=owl,sort=nearest,limit=1,tag=!active] {NoAI:1b}
advancement revoke @s only owls:used_owl

