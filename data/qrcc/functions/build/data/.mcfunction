#> qrcc:build/data/
#@within function qrcc:build/**

data modify storage qrcc:_ data_copy set from storage qrcc:_ data
data modify storage qrcc:_ data_temp set value []

scoreboard players set #-1 QRCC -1
scoreboard players set #6 QRCC 6

# y=-8,...,-1
scoreboard players set #Dir QRCC -1
scoreboard players set #Idx1Min QRCC 9
scoreboard players operation #Idx1Max QRCC = #Size QRCC
scoreboard players remove #Idx1Max QRCC 1
scoreboard players set #Idx3Min QRCC -8
scoreboard players operation #Idx1 QRCC = #Idx1Max QRCC
scoreboard players set #Idx2 QRCC -1
scoreboard players set #Idx3 QRCC -2
scoreboard players operation #Idx1Mod QRCC = #Idx1 QRCC
scoreboard players operation #Idx1Mod QRCC %= #6 QRCC
scoreboard players operation #Idx2Mod QRCC = #Idx1Mod QRCC
scoreboard players operation #Idx3Mod QRCC = #Idx1Mod QRCC
scoreboard players remove #Idx3Mod QRCC 1
execute if score #Idx3Mod QRCC matches -1 run scoreboard players add #Idx3Mod QRCC 6
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Idx1 QRCC
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx2 QRCC
execute store result storage qrcc:_ macro.idx3 int 1.0 run scoreboard players get #Idx3 QRCC
function qrcc:build/data/loop with storage qrcc:_ macro

# y=9,...,Size-9
scoreboard players set #Dir QRCC -1
scoreboard players set #Idx1Min QRCC 0
scoreboard players set #Idx3Min QRCC 9
scoreboard players operation #Idx1 QRCC = #Idx1Max QRCC
scoreboard players operation #Idx2 QRCC = #Size QRCC
scoreboard players remove #Idx2 QRCC 9
scoreboard players operation #Idx3 QRCC = #Idx2 QRCC
scoreboard players remove #Idx3 QRCC 1
scoreboard players operation #Idx1Mod QRCC = #Idx1 QRCC
scoreboard players operation #Idx1Mod QRCC %= #6 QRCC
scoreboard players operation #Idx2Mod QRCC = #Idx2 QRCC
scoreboard players operation #Idx2Mod QRCC %= #6 QRCC
scoreboard players operation #Idx3Mod QRCC = #Idx1Mod QRCC
scoreboard players remove #Idx3Mod QRCC 1
execute if score #Idx3Mod QRCC matches -1 run scoreboard players add #Idx3Mod QRCC 6
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Idx1 QRCC
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx2 QRCC
execute store result storage qrcc:_ macro.idx3 int 1.0 run scoreboard players get #Idx3 QRCC
function qrcc:build/data/loop with storage qrcc:_ macro

# y=7,8
scoreboard players set #Dir QRCC -1
scoreboard players set #Idx1Min QRCC 9
scoreboard players remove #Idx1Max QRCC 8
scoreboard players set #Idx3Min QRCC 7
scoreboard players operation #Idx1 QRCC = #Idx1Max QRCC
scoreboard players set #Idx2 QRCC 8
scoreboard players set #Idx3 QRCC 7
scoreboard players operation #Idx1Mod QRCC = #Idx1 QRCC
scoreboard players operation #Idx1Mod QRCC %= #6 QRCC
scoreboard players set #Idx2Mod QRCC 2
scoreboard players set #Idx3Mod QRCC 1
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Idx1 QRCC
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx2 QRCC
execute store result storage qrcc:_ macro.idx3 int 1.0 run scoreboard players get #Idx3 QRCC
function qrcc:build/data/loop with storage qrcc:_ macro

# y=0,...,5
scoreboard players set #Dir QRCC 1
scoreboard players set #Idx3Min QRCC 0
scoreboard players operation #Idx1 QRCC = #Idx1Min QRCC
scoreboard players set #Idx2 QRCC 5
scoreboard players set #Idx3 QRCC 4
scoreboard players operation #Idx1Mod QRCC = #Idx1 QRCC
scoreboard players operation #Idx1Mod QRCC %= #6 QRCC
scoreboard players set #Idx2Mod QRCC 5
scoreboard players set #Idx3Mod QRCC 4
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Idx1 QRCC
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Idx2 QRCC
execute store result storage qrcc:_ macro.idx3 int 1.0 run scoreboard players get #Idx3 QRCC
function qrcc:build/data/loop with storage qrcc:_ macro


scoreboard players reset #-1 QRCC
scoreboard players reset #6 QRCC
scoreboard players reset #Dir QRCC
scoreboard players reset #Idx1Min QRCC
scoreboard players reset #Idx1Max QRCC
scoreboard players reset #Idx3Min QRCC
scoreboard players reset #Idx1 QRCC
scoreboard players reset #Idx2 QRCC
scoreboard players reset #Idx3 QRCC
scoreboard players reset #Idx1Mod QRCC
scoreboard players reset #Idx2Mod QRCC
scoreboard players reset #Idx3Mod QRCC
scoreboard players reset #Temp QRCC


data remove storage qrcc:_ data_copy



