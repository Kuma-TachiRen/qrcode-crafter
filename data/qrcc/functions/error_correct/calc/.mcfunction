#> qrcc:error_correct/calc/
# @within function qrcc:error_correct/**

data modify storage qrcc:_ data_byte append value []
scoreboard players operation #Loop QRCC = #ECLength QRCC
function qrcc:error_correct/calc/init

data modify storage qrcc:_ macro set value {idx1:0}
execute store result storage qrcc:_ macro.ec_length int 1.0 run scoreboard players get #ECLength QRCC
scoreboard players set #Loop QRCC 0
function qrcc:error_correct/calc/loop
data remove storage qrcc:_ data_split[0]
execute if data storage qrcc:_ data_split[0] run function qrcc:error_correct/calc/
