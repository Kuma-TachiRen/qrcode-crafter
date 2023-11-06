#> qrcc:error_correct/merge/
# @input
#   score #Group QRCC
#   score #Loop QRCC
# @within function qrcc:error_correct/**

data modify storage qrcc:_ macro set value {group: 0}
scoreboard players set #Loop2 QRCC 0
function qrcc:error_correct/merge/loop with storage qrcc:_ macro

scoreboard players add #Loop QRCC 1
execute if score #Loop QRCC < #MergeLength QRCC run function qrcc:error_correct/merge/
