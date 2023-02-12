playsound owls:animal.owl.hoot neutral @a ~ ~ ~ 1.0
tag @s remove owl1
tag @s remove owl2
tag @s remove owl3
tag @s remove owl4
tag @s remove owl5
tag @s remove owl6
tag @s remove owl7
tag @s remove owl8
tag @s remove owl9
tag @s remove owl10
tag @s remove owl11
tag @s remove owl12
tag @s remove owl13
tag @s remove owl14
tag @s remove owl15
tag @s remove owl16
tag @s remove owl17
tag @s remove owl18
tag @s remove owl19
tag @s remove owl20
tag @s remove owl21
tag @s remove owl22
tag @s remove owl23
tag @s remove owl24
tag @s remove owl25
tag @s remove owl26
tag @s remove owl27
tag @s remove owl28
tag @s remove owl29
tag @s remove owl30
tag @s remove owl31
tag @s remove owl32
tag @s remove owl33
tag @s remove owl34
tag @s remove owl35
tag @s remove owl36
tag @s remove owl37
tag @s remove owl38
tag @s remove owl39
tag @s remove owl40
tag @s remove owl41
tag @s remove owl42
tag @s remove owl43
tag @s remove owl44
tag @s remove owl45
tag @s remove owl46
tag @s remove owl47
tag @s remove owl48
tag @s remove owl49
tag @s remove owl50
tag @s remove owl51
tag @s remove owl52
tag @s remove owl53
tag @s remove owl54
tag @s remove owl55
tag @s remove owl56
tag @s remove owl57
tag @s remove owl58
tag @s remove owl59
tag @s remove owl60
tag @s remove owl61
tag @s remove owl62
tag @s remove owl63
tag @s remove owl64
tag @s remove owl65
tag @s remove owl66
tag @s remove owl67
tag @s remove owl68
tag @s remove owl69
tag @s remove owl70
tag @s remove owl71
tag @s remove owl72
tag @s remove owl73
tag @s remove owl74
tag @s remove owl75
tag @s remove owl76
tag @s remove owl77
tag @s remove owl78
tag @s remove owl79
tag @s remove owl80
tag @s remove owl81
tag @s remove owl82
tag @s remove owl83
tag @s remove owl84
tag @s remove owl85
tag @s remove owl86
tag @s remove owl87
tag @s remove owl88
tag @s remove owl89
tag @s remove owl90
tag @s remove owl91
tag @s remove owl92
tag @s remove owl93
tag @s remove owl94
tag @s remove owl95
tag @s remove owl96
tag @s remove owl97
tag @s remove owl98
tag @s remove owl99
tag @s remove owl100
tag @s remove return

kill @e[tag=select,type=armor_stand,sort=nearest,distance=..5]
kill @e[tag=owl,type=armor_stand,sort=nearest,distance=..5]
kill @e[tag=owl,type=marker,sort=nearest,distance=..5]
kill @e[tag=select,type=marker,sort=nearest,distance=..5]



#execute unless entity @e[tag=owlstand,type=minecraft:armor_stand,distance=..1.3] run kill @s
execute unless entity @e[tag=owlstand,type=minecraft:armor_stand,distance=..1.3] run tag @s add die
execute if entity @s[tag=die] run data merge entity @s {DeathLootTable:"bruh"}
execute if entity @s[tag=die,tag=!snowy] run function owls:summon/default
execute if entity @s[tag=die,tag=snowy] run function owls:summon/snowy
execute if entity @s[tag=die] run kill @s