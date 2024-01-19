# Setup
scoreboard objectives add world dummy
scoreboard players add initialised world 0
# Loop
execute if score initialised world matches ..200 run scoreboard players add initialised world 1
# Main
execute if score initialised world matches ..199 run setworldspawn 8 32767 8
execute if score initialised world matches ..199 run tp @a 8 74 8
give @a [tag=!joined] apple 1
give @a [tag=!joined] dirt 1
give @a [tag=!joined] sapling 1
give @a [tag=!joined] lava_bucket 1
give @a [tag=!joined] ice 1
give @a [tag=!joined] chest 1
tag @a [tag=!joined] add joined