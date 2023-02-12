execute unless entity @a[distance=..5,gamemode=!spectator] unless predicate owls:checks/is_snowy run function owls:summon/default
execute unless entity @a[distance=..5,gamemode=!spectator] if predicate owls:checks/is_snowy run function owls:summon/snowy
tag @s add checked