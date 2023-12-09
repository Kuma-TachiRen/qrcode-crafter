#> qrcc:encode/unicode/code
# encode unicode
# @internal

$execute unless data storage qrcc:table encode_unicode_map."$(char)" run scoreboard players set #Result QRCC -1
execute if score #Result QRCC matches ..-1 run return -1
$data modify storage qrcc:_ macro.bytes set from storage qrcc:table encode_unicode_map."$(char)"
data modify storage qrcc:_ macro.byte set from storage qrcc:_ macro.bytes[0]
data remove storage qrcc:_ macro.bytes[0]
function qrcc:encode/unicode/to_bits with storage qrcc:_ macro
