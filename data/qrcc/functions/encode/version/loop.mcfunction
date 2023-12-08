#> qrcc:encode/version/loop
# @within function qrcc:encode/version/**

execute if score #Mode QRCC matches 0..1 if score #Version QRCC matches 10 run scoreboard players add #Length QRCC 2
execute if score #Mode QRCC matches 0..1 if score #Version QRCC matches 27 run scoreboard players add #Length QRCC 2
execute if score #Mode QRCC matches 2 if score #Version QRCC matches 10 run scoreboard players add #Length QRCC 8

$execute store result score #MaxLength QRCC run data get storage qrcc:table max_length[$(version)][$(ec_level)]
execute if score #MaxLength QRCC >= #Length QRCC run return 0

scoreboard players add #Version QRCC 1
execute store result storage qrcc:_ macro.version int 1.0 run scoreboard players get #Version QRCC
function qrcc:encode/version/loop with storage qrcc:_ macro
