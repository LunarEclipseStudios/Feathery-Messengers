#20tick
schedule function owls:main/20tick 1s

#scoreboards
scoreboard objectives add justLeft minecraft.custom:minecraft.leave_game
scoreboard objectives add owlLocation trigger
scoreboard objectives add stuckTimer dummy
scoreboard objectives add owlSound dummy

#gameRules
gamerule sendCommandFeedback false

#teams
team add nocol
team modify nocol collisionRule never