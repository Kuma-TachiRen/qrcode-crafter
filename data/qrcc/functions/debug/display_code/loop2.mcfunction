#> qrcc:debug/display_code/loop2
#@private

$execute store result score #Val QRCC run data get storage qrcc:_ code[$(idx1)][$(idx2)]
$execute if score #Val QRCC matches -1 run data modify storage qrcc:_ macro.text set value '$(text){"text":"█","color":"gray"},'
$execute if score #Val QRCC matches 0 run data modify storage qrcc:_ macro.text set value '$(text){"text":"█","color":"white"},'
$execute if score #Val QRCC matches 1 run data modify storage qrcc:_ macro.text set value '$(text){"text":"█","color":"black"},'

scoreboard players add #Loop2 QRCC 1
execute store result storage qrcc:_ macro.idx2 int 1.0 run scoreboard players get #Loop2 QRCC
execute if score #Loop2 QRCC < #Size QRCC run function qrcc:debug/display_code/loop2 with storage qrcc:_ macro
