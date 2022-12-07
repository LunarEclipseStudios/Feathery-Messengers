summon minecraft:chest_minecart ~ ~ ~
playsound owls:animal.owl.hoot neutral @a ~ ~-5 ~ 1.0 .7
item replace entity @e[type=minecraft:chest_minecart,sort=nearest,limit=1,distance=..5] container.0 from entity @s weapon.mainhand
kill @e[type=minecraft:chest_minecart,sort=nearest,limit=1,distance=..5]
item replace entity @s weapon.mainhand with air

#reset
tag @s remove active
execute unless entity @s[tag=select] run tag @s add return

