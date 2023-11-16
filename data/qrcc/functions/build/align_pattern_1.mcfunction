#> qrcc:build/align_pattern_1
# @within function qrcc:build/**

$data modify storage qrcc:_ align_patterns set from storage qrcc:table align_patterns[$(version)]
execute if data storage qrcc:_ align_patterns[0] run function qrcc:build/align_pattern_2 with storage qrcc:_ align_patterns[0]