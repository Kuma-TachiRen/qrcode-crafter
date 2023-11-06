#> qrcc:decode/alphanumeric/
# decode alphanumeric
# @input 
#   storage qrcc:_ text
# @within function qrcc:decode/**

data modify storage qrcc:_ data append value 0b
data modify storage qrcc:_ data append value 0b
data modify storage qrcc:_ data append value 1b
data modify storage qrcc:_ data append value 0b

function qrcc:decode/version/

execute store result score #Loop QRCC run data get storage qrcc:_ text
execute if score #Loop QRCC matches 1.. run function qrcc:decode/alphanumeric/loop

scoreboard players reset #Loop QRCC
