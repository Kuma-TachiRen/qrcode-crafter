#> qrcc:encode/version/data_calc
# @within function qrcc:encode/version/**

scoreboard players operation #Temp QRCC = #Length QRCC
scoreboard players operation #Temp QRCC %= #2 QRCC
execute if score #Temp QRCC matches 0 run data modify storage qrcc:_ length_bits insert 0 value 0b
execute if score #Temp QRCC matches 1 run data modify storage qrcc:_ length_bits insert 0 value 1b
scoreboard players operation #Length QRCC /= #2 QRCC

scoreboard players remove #LengthBitsSize QRCC 1
execute if score #LengthBitsSize QRCC matches 1.. run function qrcc:encode/version/data_calc