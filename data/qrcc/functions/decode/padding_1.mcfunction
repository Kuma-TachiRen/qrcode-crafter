#> qrcc:decode/padding
# @within function qrcc:decode/**

data modify storage qrcc:_ data_byte append value 236s
data modify storage qrcc:_ data_byte append value 17s

scoreboard players add #Length QRCC 16
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:decode/padding_1
