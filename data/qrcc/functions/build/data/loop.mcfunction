#> qrcc:build/data/loop
#@within function qrcc:build/data/**

execute store result storage qrcc:_ macro.x int 1.0 run scoreboard players get #Idx1Mod QRCC
execute store result storage qrcc:_ macro.y int 1.0 run scoreboard players get #Idx2Mod QRCC
$execute store result score #Val QRCC run data get storage qrcc:_ code[$(idx1)][$(idx2)]
execute if score #Val QRCC matches -1 run function qrcc:build/data/write

execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx3 QRCC
execute store result storage qrcc:_ macro.y int 1.0 run scoreboard players get #Idx3Mod QRCC
$execute store result score #Val QRCC run data get storage qrcc:_ code[$(idx1)][$(idx3)]
execute if score #Val QRCC matches -1 run function qrcc:build/data/write
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx2 QRCC

scoreboard players operation #Idx1 QRCC += #Dir QRCC
scoreboard players operation #Idx1Mod QRCC += #Dir QRCC
execute if score #Idx1Mod QRCC matches ..-1 run scoreboard players add #Idx1Mod QRCC 6
execute if score #Idx1Mod QRCC matches 6.. run scoreboard players remove #Idx1Mod QRCC 6
execute if score #Idx1 QRCC < #Idx1Min QRCC run function qrcc:build/data/loop_flip
execute if score #Idx1 QRCC > #Idx1Max QRCC run function qrcc:build/data/loop_flip
execute if score #Idx3 QRCC < #Idx3Min QRCC run return 0

execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Idx1 QRCC
function qrcc:build/data/loop with storage qrcc:_ macro