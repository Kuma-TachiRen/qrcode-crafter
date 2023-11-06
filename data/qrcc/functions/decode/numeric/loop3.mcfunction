#> qrcc:decode/numeric/loop3
# decode numeric
# @input 
#   storage qrcc:_ text
# @internal

data modify storage qrcc:_ macro set value {}
data modify storage qrcc:_ macro.group set string storage qrcc:_ text 0 3
function qrcc:decode/numeric/code with storage qrcc:_ macro
data modify storage qrcc:_ text set string storage qrcc:_ text 3
