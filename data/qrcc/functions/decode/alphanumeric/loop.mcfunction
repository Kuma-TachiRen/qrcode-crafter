#> qrcc:decode/alphanumeric/loop
# decode alphanumeric
# @input 
#   storage qrcc:_ text
# @internal

data modify storage qrcc:_ macro set value {}
execute if score #Loop QRCC matches 1 run function qrcc:decode/alphanumeric/loop1
execute if score #Loop QRCC matches 2.. run function qrcc:decode/alphanumeric/loop2

scoreboard players remove #Loop QRCC 2
execute if score #Loop QRCC matches 1.. run function qrcc:decode/alphanumeric/loop
