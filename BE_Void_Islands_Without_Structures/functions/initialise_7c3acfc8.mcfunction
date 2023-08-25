# Setup
scoreboard objectives add world dummy
scoreboard players add initialised world 0
# Loop
execute if score initialised world matches ..100 run scoreboard players add initialised world 1
# Main
execute if score initialised world matches ..99 run setworldspawn 8 32767 8
execute if score initialised world matches ..99 run tp @a 8 74 8
give @a [tag=!joined] cooked_beef 1
tag @a [tag=!joined] add joined