#> qrcc:decode/numeric/loop
# decode numeric
# @input 
#   storage qrcc:_ text
# @internal

data modify storage qrcc:_ macro set value {}
execute if score #Loop QRCC matches 1 run function qrcc:decode/numeric/loop1
execute if score #Loop QRCC matches 2 run function qrcc:decode/numeric/loop2
execute if score #Loop QRCC matches 3.. run function qrcc:decode/numeric/loop3

scoreboard players remove #Loop QRCC 3
execute if score #Loop QRCC matches 1.. run function qrcc:decode/numeric/loop
