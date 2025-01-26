#perf:sincos/tp/loop

# 在这里写测试命令
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players add test int 1
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:sincos/tp/loop