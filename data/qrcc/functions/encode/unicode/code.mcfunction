#> qrcc:encode/unicode/code
# encode unicode
# @internal

$execute unless data storage qrcc:table encode_unicode_map."$(char)" run scoreboard players set #Result QRCC -1
$execute unless data storage qrcc:table encode_unicode_map."$(char)" run return -1
$data modify storage qrcc:_ data_temp append from storage qrcc:table encode_unicode_map."$(char)"[]
