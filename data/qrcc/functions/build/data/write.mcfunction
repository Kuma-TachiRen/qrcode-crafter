#> qrcc:build/data/write
#@within function qrcc:build/data/**

execute unless data storage qrcc:_ data_temp[0] run function qrcc:build/data/read
data modify storage qrcc:_ macro.val set from storage qrcc:_ data_temp[0]
data remove storage qrcc:_ data_temp[0]
function qrcc:build/data/write_sub with storage qrcc:_ macro
