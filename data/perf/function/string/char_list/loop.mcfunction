#perf:string/char_list/loop

# 在这里写测试命令
data modify storage math:io input set value "859345316_test_hi"
function math:string/_from_raw

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:string/char_list/loop