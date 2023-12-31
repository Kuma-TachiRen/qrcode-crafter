#> qrcc:encode/classify/
# モード判別
# @input
#   storage qrcc:_ text
# @output
#   score #Mode QRCC
# @within function qrcc:encode/**

scoreboard players set #Temp QRCC 32768
execute store result score #Loop QRCC run data get storage qrcc:_ text
scoreboard players operation #Temp QRCC *= #Loop QRCC
execute if score #Loop QRCC matches 1.. run function qrcc:encode/classify/loop

scoreboard players reset #Loop QRCC

scoreboard players set #Mode QRCC 2
execute if score #Temp QRCC matches 1..32767 run scoreboard players set #Mode QRCC 1
execute if score #Temp QRCC matches 0 run scoreboard players set #Mode QRCC 0
