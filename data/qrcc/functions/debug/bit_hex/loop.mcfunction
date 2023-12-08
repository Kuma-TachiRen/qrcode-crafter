#> qrcc:debug/bit_hex/loop
#@private

scoreboard players operation #HexVal QRCC += #HexVal QRCC
execute store result score #HexTemp QRCC run data get storage qrcc:_ data_temp[0]
scoreboard players operation #HexVal QRCC += #HexTemp QRCC
data remove storage qrcc:_ data_temp[0]

scoreboard players add #HexLoop QRCC 1
execute if score #HexLoop QRCC matches 8 run function qrcc:debug/bit_hex/add
execute if data storage qrcc:_ data_temp[0] run function qrcc:debug/bit_hex/loop