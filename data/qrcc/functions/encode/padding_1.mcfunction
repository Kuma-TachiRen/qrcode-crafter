#> qrcc:encode/padding
# @within function qrcc:encode/**

data modify storage qrcc:_ data_byte append value -20b
data modify storage qrcc:_ data_byte append value 17b

scoreboard players add #Length QRCC 16
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:encode/padding_1
