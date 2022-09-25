effect give @s invisibility 10 255 true

execute unless entity @a[distance=..6] run tag @s remove select
execute if data entity @s {NoAI:1b} unless entity @a[distance=..6] run data merge entity @s {NoAI:0b}

execute if entity @s[tag=!active] unless entity @e[type=armor_stand,tag=select,distance=..20.5] store result entity @e[type=minecraft:armor_stand,tag=owlstand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]

execute if entity @a[distance=0..100] run function owls:animation/owl