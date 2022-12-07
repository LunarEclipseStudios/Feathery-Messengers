execute if score count player_count matches 2.. if entity @a[distance=25..] unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run function owls:events/owl_delivery_options
execute if score count player_count matches 2.. if entity @a[distance=25..] unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run tag @s add sender
execute run tag @e[type=allay,tag=owl,sort=nearest,limit=1,tag=!active] add select
execute unless data entity @s {SelectedItem:{id:"minecraft:lead"}} run data merge entity @e[type=allay,tag=owl,sort=nearest,limit=1,tag=!active] {NoAI:1b}

execute unless score count player_count matches 2.. run tellraw @s [{"text":"Sorry,","bold":false,"color":"dark_red"},{"text":" there are currently no online players!","color":"red"}]
execute unless entity @a[distance=25..] if score count player_count matches 2.. run tellraw @s [{"text":"Sorry,","bold":false,"color":"dark_red"},{"text":" there are no players far enough away to deliver to!","color":"red"}]
execute unless score count player_count matches 2.. run data merge entity @e[type=allay,tag=owl,sort=nearest,limit=1,tag=select] {NoAI:0b}
execute unless entity @a[distance=25..] if score count player_count matches 2.. run data merge entity @e[type=allay,tag=owl,sort=nearest,limit=1,tag=select] {NoAI:0b}
execute unless score count player_count matches 2.. run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute unless entity @a[distance=25..] if score count player_count matches 2.. run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

advancement revoke @s only owls:used_owl

