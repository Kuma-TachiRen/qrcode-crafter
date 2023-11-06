#> qrcc:error_correct/calc/init
# @within function qrcc:error_correct/calc/**

data modify storage qrcc:_ data_byte[-1] append value 0b
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:error_correct/calc/init
