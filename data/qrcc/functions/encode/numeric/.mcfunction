#> qrcc:encode/numeric/
# encode numeric
# @input 
#   storage qrcc:_ text
# @within function qrcc:encode/**

data modify storage qrcc:_ data append value 0b
data modify storage qrcc:_ data append value 0b
data modify storage qrcc:_ data append value 0b
data modify storage qrcc:_ data append value 1b

function qrcc:encode/version/

execute store result score #Loop QRCC run data get storage qrcc:_ text
execute if score #Loop QRCC matches 1.. run function qrcc:encode/numeric/loop

scoreboard players reset #Loop QRCC
