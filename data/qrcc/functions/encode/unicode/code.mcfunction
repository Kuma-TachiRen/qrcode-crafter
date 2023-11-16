#> qrcc:encode/unicode/code
# encode unicode
# @internal

$data modify storage qrcc:_ data append from storage qrcc:table encode_unicode_map."$(char)"[]

$tellraw @a {"text":"$(char)"}
$tellraw @a {"storage":"qrcc:table","nbt":"encode_unicode_map.$(char)"}