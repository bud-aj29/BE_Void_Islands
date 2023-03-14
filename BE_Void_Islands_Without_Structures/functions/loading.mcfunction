# Setup
scoreboard objectives add loaded dummy
scoreboard players set @a[tag=!loaded] loaded 81
tag @a add loaded
# Loop
scoreboard players add @a[scores={loaded=1..}] loaded -1
# Main
execute @a[scores={loaded=1..}] ~~~ setworldspawn 8 32767 8
execute @a[scores={loaded=1..}] ~~~ tp @s 8 74 8