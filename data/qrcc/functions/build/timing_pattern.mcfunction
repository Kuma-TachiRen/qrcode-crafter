#> qrcc:build/timing_pattern
# timing pattern
# @within function qrcc:build/**

$data modify storage qrcc:_ code[6][$(idx)] set value $(val)b
$data modify storage qrcc:_ code[$(idx)][6] set value $(val)b

scoreboard players set #Temp QRCC 1
scoreboard players operation #Val QRCC >< #Temp QRCC
scoreboard players operation #Val QRCC -= #Temp QRCC
execute store result storage qrcc:_ macro.val byte 1.0 run scoreboard players get #Val QRCC

scoreboard players remove #Loop QRCC 1
execute store result storage qrcc:_ macro.idx int 1.0 run scoreboard players get #Loop QRCC
execute if score #Loop QRCC matches 8.. run function qrcc:build/timing_pattern with storage qrcc:_ macro