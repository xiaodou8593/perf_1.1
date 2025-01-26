#perf:data/data_n/get_loop

data modify storage perf:io temp append from storage perf:io data[0]
data remove storage perf:io data[0]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:data/data_n/get_loop