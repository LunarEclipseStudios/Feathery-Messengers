#rotationData
execute unless entity @e[type=armor_stand,tag=select,distance=..20.5] if entity @s[tag=!active] store result entity @e[type=minecraft:armor_stand,tag=owlstand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]

#flyingAnimation
execute if data entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] {ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b}]} run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with sunflower{CustomModelData:2}

#defaultAnimation
execute if data entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] {ArmorItems:[{},{},{},{id:"minecraft:sunflower",Count:1b,tag:{CustomModelData:1}}]} if block ~ ~-.1 ~ #owls:spawn_blocks run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with sunflower{CustomModelData:2}
execute if data entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] {ArmorItems:[{},{},{},{id:"minecraft:sunflower",Count:1b,tag:{CustomModelData:2}}]} unless block ~ ~-.1 ~ #owls:spawn_blocks run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with sunflower{CustomModelData:1}

#snowyAnimation
execute if data entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] {ArmorItems:[{},{},{},{id:"minecraft:sunflower",Count:1b,tag:{CustomModelData:3}}]} if block ~ ~-.1 ~ #owls:spawn_blocks run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with sunflower{CustomModelData:4}
execute if data entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] {ArmorItems:[{},{},{},{id:"minecraft:sunflower",Count:1b,tag:{CustomModelData:4}}]} unless block ~ ~-.1 ~ #owls:spawn_blocks run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with sunflower{CustomModelData:3}