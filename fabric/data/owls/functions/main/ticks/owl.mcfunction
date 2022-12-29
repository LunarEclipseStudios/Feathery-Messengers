#mobSetup
effect give @s invisibility 10 255 true

#AI
#activeOwl
execute if entity @s[tag=active] unless entity @p[distance=..5,gamemode=!spectator] run tp @s ^ ^-.2 ^.5
execute if entity @s[tag=active] unless blocks ~ 256 ~ ~ 276 ~ ~ ~-20 ~ all run tp @s ~ ~.6 ~
#returnOwl
execute if entity @s[tag=return] run tp @s ^ ^-.2 ^.5
execute if entity @s[tag=return] unless entity @e[type=marker,tag=select,distance=..20.5] unless blocks ~ 256 ~ ~ 276 ~ ~ ~-20 ~ all run tp @s ~ ~.6 ~

#deselectOwl
execute unless entity @a[distance=..6] run tag @s remove select
execute if data entity @s {NoAI:1b} unless entity @a[distance=..6] run data merge entity @s {NoAI:0b}

#animate
execute if entity @a[distance=0..100] run function owls:animation/owl

#invisibleOwlFix
execute unless entity @e[type=armor_stand,tag=owlstand,distance=..2] run function owls:events/owl_invisible

#oldLootTableFix
execute if data entity @s {DeathLootTable:"minecraft:entities/chicken"} run data merge entity @s {DeathLootTable:"owls:entities/owl"}