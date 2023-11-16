#> qrcc:build/data/read
#@within function qrcc:build/data/**

data modify storage qrcc:_ macro.val set from storage qrcc:_ data_copy[0]
data remove storage qrcc:_ data_copy[0]
function qrcc:build/data/read_sub with storage qrcc:_ macro