#> qrcc:error_correct/calc/mul
# @within function qrcc:error_correct/calc/**

$data modify storage qrcc:_ macro.val1 set from storage qrcc:table error_correct_poly[$(ec_length)][$(idx1)][$(idx2)]
data modify storage qrcc:_ macro.val2 set from storage qrcc:_ data_split[0][-1]
function qrcc:error_correct/calc/add with storage qrcc:_ macro

scoreboard players add #Loop2 QRCC 1
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Loop2 QRCC
execute if score #Loop2 QRCC < #ECLength QRCC run function qrcc:error_correct/calc/mul with storage qrcc:_ macro
