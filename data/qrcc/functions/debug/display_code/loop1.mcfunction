#> qrcc:debug/display_code/loop1
#@private

scoreboard players set #Loop2 QRCC 0
data modify storage qrcc:_ macro.idx2 set value 0
data modify storage qrcc:_ macro.text set value ""
function qrcc:debug/display_code/loop2 with storage qrcc:_ macro

data modify storage qrcc:_ macro.text set string storage qrcc:_ macro.text 0 -1
function qrcc:debug/display_code/enclose with storage qrcc:_ macro
tellraw @s {"storage":"qrcc:_","nbt":"macro.text","interpret":true}

scoreboard players add #Loop QRCC 1
execute store result storage qrcc:_ macro.idx1 int 1.0 run scoreboard players get #Loop QRCC
execute if score #Loop QRCC < #Size QRCC run function qrcc:debug/display_code/loop1
