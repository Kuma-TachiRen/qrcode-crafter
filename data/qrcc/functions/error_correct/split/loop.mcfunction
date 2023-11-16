#> qrcc:error_correct/split/loop
# @within function qrcc:error_correct/split/**

data modify storage qrcc:_ data_split[-1] append from storage qrcc:_ data_temp[0]
data remove storage qrcc:_ data_temp[0]
scoreboard players remove #Loop2 QRCC 1
execute if score #Loop2 QRCC matches 1.. run function qrcc:error_correct/split/loop
