#20tick
schedule function owls:main/20tick 1s

#soundSystem
execute as @e[tag=owl,type=allay] at @s run scoreboard players add @s owlSound 1
execute as @e[tag=owl,type=allay] at @s if score @s owlSound matches 6.. if predicate owls:50_chance run playsound owls:animal.owl.hoot neutral @a ~ ~ ~ .2
execute as @e[tag=owl,type=allay] at @s if score @s owlSound matches 7.. run scoreboard players reset @s owlSound

#owlStuck
execute as @e[tag=owl,tag=return,type=allay] at @s if entity @e[type=armor_stand,tag=select,distance=..20.5] run scoreboard players add @s stuckTimer 1
execute as @e[tag=owl,tag=return,type=allay] at @s if score @s stuckTimer matches 15.. if entity @e[type=armor_stand,tag=select,distance=..20.5] run function owls:events/owl_unstuck

#triggers
scoreboard players enable @a owlLocation

#forceload_refresh
execute unless entity @e[tag=dead] unless entity @e[tag=torch_trace] unless entity @e[tag=owl,tag=active] unless entity @e[tag=owl,tag=return] run forceload remove all
scoreboard players add timer owlForceloadRefresh 1
execute if score timer owlForceloadRefresh matches 3600.. run forceload remove all
execute if score timer owlForceloadRefresh matches 3600.. run scoreboard players reset timer owlForceloadRefresh 
