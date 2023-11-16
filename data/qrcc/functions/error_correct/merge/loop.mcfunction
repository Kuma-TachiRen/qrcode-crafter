#> qrcc:error_correct/merge/loop
# @within function qrcc:error_correct/merge/**

$execute unless data storage qrcc:_ data_temp[$(group)][0] run return
$data modify storage qrcc:_ data append from storage qrcc:_ data_temp[$(group)][0]
$data remove storage qrcc:_ data_temp[$(group)][0]

execute store result storage qrcc:_ macro.group int 1.0 run scoreboard players get #Loop2 QRCC
scoreboard players add #Loop2 QRCC 1
execute if score #Loop2 QRCC < #MergeGroup QRCC run function qrcc:error_correct/merge/loop with storage qrcc:_ macro
