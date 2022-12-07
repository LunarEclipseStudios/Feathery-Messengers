#20tick
schedule function playercounter:main/20tick 1s

#player_count
scoreboard players reset count player_count
execute as @a at @s run scoreboard players add count player_count 1

execute as @a at @s unless entity @s[tag=hasNumber] run function playercounter:number

