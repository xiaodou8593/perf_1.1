#perf:select/ate_pure/loop

# 在这里写测试命令
execute as @e[tag=perf_entity_select,limit=1] run scoreboard players set @s int 0
execute as @e[tag=perf_entity_next,limit=1] run scoreboard players set @s int 0

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:select/ate_pure/loop