#> qrcc:build/
# コード構築
# @input
#   storage qrcc:_ data
#   storage qrcc: ECLevel
# @output
# @api

# 
data modify storage qrcc:_ macro set value {}
execute store result storage qrcc:_ macro.version int 1.0 run scoreboard players get #Version QRCC
data modify storage qrcc:_ macro.ec_level set from storage qrcc: ECLevel

# temporaly
data modify storage qrcc:_ macro.mask set value 0

function qrcc:build/masked with storage qrcc:_ macro