#> qrcc:debug/byte_hex/loop
#@private

execute store result score #HexVal QRCC run data get storage qrcc:_ data_temp[0]
data remove storage qrcc:_ data_temp[0]
execute if score #HexVal QRCC matches ..-1 run scoreboard players add #HexVal QRCC 256

scoreboard players operation #HexTemp QRCC = #HexVal QRCC
scoreboard players operation #HexTemp QRCC /= #Hex16 QRCC
execute if score #HexTemp QRCC matches ..9 store result storage qrcc:_ hex.val1 int 1.0 run scoreboard players get #HexTemp QRCC
execute if score #HexTemp QRCC matches 10 run data modify storage qrcc:_ hex.val1 set value "A"
execute if score #HexTemp QRCC matches 11 run data modify storage qrcc:_ hex.val1 set value "B"
execute if score #HexTemp QRCC matches 12 run data modify storage qrcc:_ hex.val1 set value "C"
execute if score #HexTemp QRCC matches 13 run data modify storage qrcc:_ hex.val1 set value "D"
execute if score #HexTemp QRCC matches 14 run data modify storage qrcc:_ hex.val1 set value "E"
execute if score #HexTemp QRCC matches 15 run data modify storage qrcc:_ hex.val1 set value "F"

scoreboard players operation #HexTemp QRCC = #HexVal QRCC
scoreboard players operation #HexTemp QRCC %= #Hex16 QRCC
execute if score #HexTemp QRCC matches ..9 store result storage qrcc:_ hex.val2 int 1.0 run scoreboard players get #HexTemp QRCC
execute if score #HexTemp QRCC matches 10 run data modify storage qrcc:_ hex.val2 set value "A"
execute if score #HexTemp QRCC matches 11 run data modify storage qrcc:_ hex.val2 set value "B"
execute if score #HexTemp QRCC matches 12 run data modify storage qrcc:_ hex.val2 set value "C"
execute if score #HexTemp QRCC matches 13 run data modify storage qrcc:_ hex.val2 set value "D"
execute if score #HexTemp QRCC matches 14 run data modify storage qrcc:_ hex.val2 set value "E"
execute if score #HexTemp QRCC matches 15 run data modify storage qrcc:_ hex.val2 set value "F"

function qrcc:debug/byte_hex/join with storage qrcc:_ hex

data remove storage qrcc:_ hex.val1
data remove storage qrcc:_ hex.val2

execute if data storage qrcc:_ data_temp[0] run function qrcc:debug/byte_hex/loop