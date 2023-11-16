#> qrcc:encode/unicode/loop
# encode unicode
# @input 
#   storage qrcc:_ text
# @internal

data modify storage qrcc:_ macro set value {}
data modify storage qrcc:_ macro.char set string storage qrcc:_ text 0 1
function qrcc:encode/unicode/code with storage qrcc:_ macro
data modify storage qrcc:_ text set string storage qrcc:_ text 1

scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:encode/unicode/loop
