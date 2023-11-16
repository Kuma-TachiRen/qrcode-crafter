#> qrcc:build/align_pattern_2
# @within function qrcc:build/**

data modify storage qrcc:_ macro.pos set value {}
$scoreboard players set #Temp QRCC $(x)
execute store result storage qrcc:_ macro.pos.x0 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.x1 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.x2 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.x3 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.x4 int 1.0 run scoreboard players get #Temp QRCC
$scoreboard players set #Temp QRCC $(y)
execute store result storage qrcc:_ macro.pos.y0 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.y1 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.y2 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.y3 int 1.0 run scoreboard players get #Temp QRCC
scoreboard players add #Temp QRCC 1
execute store result storage qrcc:_ macro.pos.y4 int 1.0 run scoreboard players get #Temp QRCC
function qrcc:build/align_pattern_3 with storage qrcc:_ macro.pos
data remove storage qrcc:_ marco.pos
data remove storage qrcc:_ align_patterns[0]
execute if data storage qrcc:_ align_patterns[0] run function qrcc:build/align_pattern_2 with storage qrcc:_ align_patterns[0]