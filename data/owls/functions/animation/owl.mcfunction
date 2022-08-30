scoreboard players add @s animation 1
scoreboard players add @s animation2 1
execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 1..2 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:2}
execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 3..4 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:3}
execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 5..6 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:4}
#execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 5..6 run playsound minecraft:entity.ender_dragon.flap neutral @a ~ ~ ~ .1 1.6
execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 7..8 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:5}
execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 9..10 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:4}
execute as @e[tag=owl,type=minecraft:allay] at @s if block ~ ~-.1 ~ #owls:spawn_blocks if score @s animation matches 11.. run scoreboard players reset @s animation
execute as @e[tag=owl,type=minecraft:allay] at @s unless block ~ ~-.1 ~ #owls:spawn_blocks run scoreboard players reset @s animation
execute as @e[tag=owl,type=minecraft:allay] at @s unless block ~ ~-.1 ~ #owls:spawn_blocks run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:1}

#execute as @e[tag=owl,type=minecraft:allay] at @s unless block ~ ~-0.1 ~ #owls:spawn_blocks if entity @a[tag=!sender] unless entity @s[tag=active] run data merge entity @s {Motion:[0.0d,-1.0d,0.0d]}


#walking
execute as @e[tag=owl,type=minecraft:allay] at @s if score @s animation2 matches 1..3 unless block ~ ~-.1 ~ #owls:spawn_blocks if score @s isWalking matches 1 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:7}
execute as @e[tag=owl,type=minecraft:allay] at @s if score @s animation2 matches 4..6 unless block ~ ~-.1 ~ #owls:spawn_blocks if score @s isWalking matches 1 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:8}
execute as @e[tag=owl,type=minecraft:allay] at @s if score @s animation2 matches 7..9 unless block ~ ~-.1 ~ #owls:spawn_blocks if score @s isWalking matches 1 run item replace entity @e[sort=nearest,limit=1,type=armor_stand,tag=owlstand] armor.head with paper{CustomModelData:9}
execute as @e[tag=owl,type=minecraft:allay] at @s if score @s animation2 matches 10.. unless block ~ ~-.1 ~ #owls:spawn_blocks if score @s isWalking matches 1 run scoreboard players reset @s animation2
execute as @e[tag=owl,type=minecraft:allay] at @s unless score @s isWalking matches 1 run scoreboard players reset @s animation2