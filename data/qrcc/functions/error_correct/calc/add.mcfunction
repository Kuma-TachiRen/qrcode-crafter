#> qrcc:error_correct/calc/add
# @within function qrcc:error_correct/calc/**

$data modify storage qrcc:_ macro.val1 set from storage qrcc:table gf256_mul[$(val1)][$(val2)]
$data modify storage qrcc:_ macro.val2 set from storage qrcc:_ data_byte[-1][$(idx2)]
function qrcc:error_correct/calc/set with storage qrcc:_ macro