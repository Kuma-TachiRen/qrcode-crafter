#> qrcc:error_correct/split/
# @input
#   score #Length QRCC
#   score #Loop QRCC
# @within function qrcc:error_correct/**

data modify storage qrcc:_ data_split append value []
scoreboard players operation #Loop2 QRCC = #Length QRCC
function qrcc:error_correct/split/loop

scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:error_correct/split/