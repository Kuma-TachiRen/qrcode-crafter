#> qrcc:encode/alphanumeric/loop2
# encode alphanumeric
# @input 
#   storage qrcc:_ text
# @internal

data modify storage qrcc:_ macro set value {}
data modify storage qrcc:_ macro.group set string storage qrcc:_ text 0 2
function qrcc:encode/alphanumeric/code with storage qrcc:_ macro
data modify storage qrcc:_ text set string storage qrcc:_ text 2
