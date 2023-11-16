#> qrcc:build/data/write_sub
#@within function qrcc:build/data/**

$data modify storage qrcc:_ code[$(idx1)][$(idx2)] set from storage qrcc:table mask$(mask)[$(x)][$(y)][$(val)]
