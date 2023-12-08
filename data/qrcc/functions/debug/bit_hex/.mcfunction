#> qrcc:debug/bit_hex/
#@input
#   storage qrcc:_ data_temp
#@private

data modify storage qrcc:_ hex.res set value ""
scoreboard players set #Hex16 QRCC 16
scoreboard players set #HexTemp QRCC 0
scoreboard players set #HexVal QRCC 0
scoreboard players set #HexLoop QRCC 0
execute if data storage qrcc:_ data_temp[0] run function qrcc:debug/bit_hex/loop

scoreboard players reset #Hex16 QRCC
scoreboard players reset #HexTemp QRCC
scoreboard players reset #HexVal QRCC
scoreboard players reset #HexLoop QRCC
tellraw @a {"storage":"qrcc:_","nbt":"hex.res"}
data remove storage qrcc:_ hex_temp