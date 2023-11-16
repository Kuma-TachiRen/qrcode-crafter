#> qrcc:build/data/read_sub
#@within function qrcc:build/data/**

$data modify storage qrcc:_ data_temp set from storage qrcc:table byte_bits[$(val)]
