#> qrcc:debug/setblock/loop1
#@private

scoreboard players set #Loop2 QRCC 0
data modify storage qrcc:_ macro.idx2 set value 0
function qrcc:debug/setblock/loop2 with storage qrcc:_ macro

scoreboard players add #Loop QRCC 1
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Loop QRCC
execute if score #Loop QRCC < #Size QRCC run function qrcc:debug/setblock/loop1
