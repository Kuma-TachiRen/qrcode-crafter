#> qrcc:encode/alphanumeric/loop2
# encode alphanumeric
# @input 
#   storage qrcc:_ text
# @internal

data modify storage qrcc:_ macro set value {}
data modify storage qrcc:_ macro.char1 set string storage qrcc:_ text 0 1
data modify storage qrcc:_ macro.char2 set string storage qrcc:_ text 1 2
function qrcc:encode/alphanumeric/code2 with storage qrcc:_ macro
data modify storage qrcc:_ text set string storage qrcc:_ text 2
