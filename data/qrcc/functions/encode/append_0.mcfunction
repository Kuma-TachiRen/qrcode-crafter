#> qrcc:encode/append_0
# @within function qrcc:encode/**

data modify storage qrcc:_ data append value 0b
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:encode/append_0
