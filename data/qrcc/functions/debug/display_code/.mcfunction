#> qrcc:debug/display_code/
#@private

execute store result score #Size QRCC run data get storage qrcc: Result.Size
scoreboard players set #Loop QRCC 0
data modify storage qrcc:_ macro.idx1 set value 0
function qrcc:debug/display_code/loop1

data remove storage qrcc:_ macro
scoreboard players reset * QRCC