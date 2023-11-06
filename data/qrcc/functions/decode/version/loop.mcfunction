#> qrcc:decode/version/loop
# @within function qrcc:decode/version/**

$execute store result score #MaxLength QRCC run data get storage qrcc:table max_length[$(version)][$(mode)][$(ec_level)]

execute if score #MaxLength QRCC >= #Length QRCC run return 0

scoreboard players add #Version QRCC 1
execute store result storage qrcc:_ macro.version int 1.0 run scoreboard players get #Version QRCC
function qrcc:decode/version/loop with storage qrcc:_ macro
