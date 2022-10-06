scoreboard players reset tick owl20tick

execute unless entity @e[tag=torch_trace] unless entity @e[tag=owl,tag=active] unless entity @e[tag=owl,tag=return] run forceload remove all

#sound_system
execute as @e[tag=owl,type=allay] at @s run scoreboard players add @s owlsound 1
execute as @e[tag=owl,type=allay] at @s if score @s owlsound matches 6.. if predicate owls:50_chance run playsound lunar:animal.owl.hoot neutral @a ~ ~ ~ .2
execute as @e[tag=owl,type=allay] at @s if score @s owlsound matches 7.. run scoreboard players reset @s owlsound

#execute as @e[tag=owl,type=minecraft:allay] at @s unless block ~ ~-.1 ~ #owls:spawn_blocks run stopsound @a[distance=..15] neutral minecraft:entity.ender_dragon.flap

#animations
#execute as @e[tag=owl,type=minecraft:allay] at @s if entity @s[nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players set @s isWalking 0
#execute as @e[tag=owl,type=allay] at @s run scoreboard players set @s isWalking 1
#execute as @e[tag=owl,type=minecraft:allay] at @s if entity @s[nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players set @s isWalking 0

execute as @e[tag=owl,tag=return,type=allay] at @s if entity @e[type=armor_stand,tag=select,distance=..20.5] run scoreboard players add @s stucktimer 1
execute as @e[tag=owl,tag=return,type=allay] at @s if score @s stucktimer matches 15.. if entity @e[type=armor_stand,tag=select,distance=..20.5] run function owls:unstuck



#triggers
scoreboard players enable @a owl1
scoreboard players enable @a owl2
scoreboard players enable @a owl3
scoreboard players enable @a owl4
scoreboard players enable @a owl5
scoreboard players enable @a owl6
scoreboard players enable @a owl7
scoreboard players enable @a owl8
scoreboard players enable @a owl9
scoreboard players enable @a owl10
scoreboard players enable @a owl11
scoreboard players enable @a owl12
scoreboard players enable @a owl13
scoreboard players enable @a owl14
scoreboard players enable @a owl15
scoreboard players enable @a owl16
scoreboard players enable @a owl17
scoreboard players enable @a owl18
scoreboard players enable @a owl19
scoreboard players enable @a owl20
scoreboard players enable @a owl21
scoreboard players enable @a owl22
scoreboard players enable @a owl23
scoreboard players enable @a owl24
scoreboard players enable @a owl25
scoreboard players enable @a owl26
scoreboard players enable @a owl27
scoreboard players enable @a owl28
scoreboard players enable @a owl29
scoreboard players enable @a owl30
scoreboard players enable @a owl31
scoreboard players enable @a owl32
scoreboard players enable @a owl33
scoreboard players enable @a owl34
scoreboard players enable @a owl35
scoreboard players enable @a owl36
scoreboard players enable @a owl37
scoreboard players enable @a owl38
scoreboard players enable @a owl39
scoreboard players enable @a owl40
scoreboard players enable @a owl41
scoreboard players enable @a owl42
scoreboard players enable @a owl43
scoreboard players enable @a owl44
scoreboard players enable @a owl45
scoreboard players enable @a owl46
scoreboard players enable @a owl47
scoreboard players enable @a owl48
scoreboard players enable @a owl49
scoreboard players enable @a owl50
scoreboard players enable @a owl51
scoreboard players enable @a owl52
scoreboard players enable @a owl53
scoreboard players enable @a owl54
scoreboard players enable @a owl55
scoreboard players enable @a owl56
scoreboard players enable @a owl57
scoreboard players enable @a owl58
scoreboard players enable @a owl59
scoreboard players enable @a owl60
scoreboard players enable @a owl61
scoreboard players enable @a owl62
scoreboard players enable @a owl63
scoreboard players enable @a owl64
scoreboard players enable @a owl65
scoreboard players enable @a owl66
scoreboard players enable @a owl67
scoreboard players enable @a owl68
scoreboard players enable @a owl69
scoreboard players enable @a owl70
scoreboard players enable @a owl71
scoreboard players enable @a owl72
scoreboard players enable @a owl73
scoreboard players enable @a owl74
scoreboard players enable @a owl75
scoreboard players enable @a owl76
scoreboard players enable @a owl77
scoreboard players enable @a owl78
scoreboard players enable @a owl79
scoreboard players enable @a owl80
scoreboard players enable @a owl81
scoreboard players enable @a owl82
scoreboard players enable @a owl83
scoreboard players enable @a owl84
scoreboard players enable @a owl85
scoreboard players enable @a owl86
scoreboard players enable @a owl87
scoreboard players enable @a owl88
scoreboard players enable @a owl89
scoreboard players enable @a owl90
scoreboard players enable @a owl91
scoreboard players enable @a owl92
scoreboard players enable @a owl93
scoreboard players enable @a owl94
scoreboard players enable @a owl95
scoreboard players enable @a owl96
scoreboard players enable @a owl97
scoreboard players enable @a owl98
scoreboard players enable @a owl99
scoreboard players enable @a owl100

#player_count
scoreboard players reset count player_count
execute as @a at @s run scoreboard players add count player_count 1


execute as @a at @s unless entity @s[tag=hasNumber] run function owls:number

#forceload_refresh
scoreboard players add timer owl_forceload_refresh 1
execute if score timer owl_forceload_refresh matches 3600.. run forceload remove all
execute if score timer owl_forceload_refresh matches 3600.. run scoreboard players reset timer owl_forceload_refresh
