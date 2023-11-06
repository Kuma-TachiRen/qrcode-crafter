#> qrcc:error_correct/calc/loop
# @within function qrcc:error_correct/calc/**

data modify storage qrcc:_ macro.idx2 set value 0
scoreboard players set #Loop2 QRCC 0
function qrcc:error_correct/calc/mul with storage qrcc:_ macro
scoreboard players reset #Loop2 QRCC

data remove storage qrcc:_ data_split[0][-1]
scoreboard players add #Loop QRCC 1
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Loop QRCC
execute if data storage qrcc:_ data_split[0][-1] run function qrcc:error_correct/calc/loop
