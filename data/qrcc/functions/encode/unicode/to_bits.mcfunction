#> qrcc:encode/unicode/to_bits
# encode unicode
# @internal

$data modify storage qrcc:_ data_temp append from storage qrcc:table byte_bits[$(byte)][]
execute unless data storage qrcc:_ macro.bytes[0] run return 0
data modify storage qrcc:_ macro.byte set from storage qrcc:_ macro.bytes[0]
data remove storage qrcc:_ macro.bytes[0]
function qrcc:encode/unicode/to_bits with storage qrcc:_ macro
