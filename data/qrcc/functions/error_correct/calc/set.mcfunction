#> qrcc:error_correct/calc/set
# @within function qrcc:error_correct/calc/**

$data modify storage qrcc:_ data_temp[-1][$(idx2)] set from storage qrcc:table gf256_add[$(val1)][$(val2)]
