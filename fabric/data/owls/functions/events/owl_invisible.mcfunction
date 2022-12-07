tag @s add deathRow
function owls:summon/summon
data modify entity @e[type=allay,tag=!deathRow,tag=owl,limit=1,sort=nearest] HandItems set from entity @s HandItems
data modify entity @e[type=allay,tag=!deathRow,tag=owl,limit=1,sort=nearest] Tags set from entity @s Tags
tp @e[type=allay,tag=!deathRow,tag=owl,limit=1,sort=nearest] ~ ~ ~ ~ ~
data merge entity @s {DeathLootTable:"minecraft:entities/lol",HandItems:[{id:"minecraft:air"}],Inventory:[{id:"minecraft:air"}]}
kill @s
