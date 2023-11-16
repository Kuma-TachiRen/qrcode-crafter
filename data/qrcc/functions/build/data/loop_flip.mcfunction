#> qrcc:build/data/loop_flip
#@within function qrcc:build/data/**

scoreboard players operation #Dir QRCC *= #-1 QRCC
scoreboard players operation #Idx1 QRCC += #Dir QRCC
scoreboard players operation #Idx1Mod QRCC += #Dir QRCC
execute if score #Idx1Mod QRCC matches ..-1 run scoreboard players add #Idx1Mod QRCC 6
execute if score #Idx1Mod QRCC matches 6.. run scoreboard players remove #Idx1Mod QRCC 6

scoreboard players remove #Idx2 QRCC 2
scoreboard players remove #Idx3 QRCC 2
scoreboard players remove #Idx2Mod QRCC 2
scoreboard players remove #Idx3Mod QRCC 2
execute if score #Idx2Mod QRCC matches ..-1 run scoreboard players add #Idx2Mod QRCC 6
execute if score #Idx3Mod QRCC matches ..-1 run scoreboard players add #Idx3Mod QRCC 6

execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx2 QRCC
execute store result storage qrcc:_ macro.idx3 int 1.0 run scoreboard players get #Idx3 QRCC
