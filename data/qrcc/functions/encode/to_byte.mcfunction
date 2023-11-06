#> qrcc:encode/to_byte
# @within function qrcc:encode/**

scoreboard players set #Tmp QRCC 0

execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC
scoreboard players operation #Tmp QRCC += #Tmp QRCC
execute store result score #Tmp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Tmp QRCC += #Tmp2 QRCC

data modify storage qrcc:_ data_byte append value 0b
execute store result storage qrcc:_ data_byte[-1] byte 1.0 run scoreboard players get #Tmp QRCC

scoreboard players remove #Loop QRCC 8
execute if score #Loop QRCC matches 1.. run function qrcc:encode/to_byte
