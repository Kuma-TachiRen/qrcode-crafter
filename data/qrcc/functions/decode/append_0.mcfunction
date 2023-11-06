#> qrcc:decode/append_0
# @within function qrcc:decode/**

data modify storage qrcc:_ data append value 0b
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:decode/append_0
