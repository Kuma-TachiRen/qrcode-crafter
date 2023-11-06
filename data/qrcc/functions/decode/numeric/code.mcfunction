#> qrcc:decode/numeric/code
# decode numeric
# @internal

$data modify storage qrcc:_ data append from storage qrcc:table decode_numeric_map."$(group)"[]
