#perf:utils/string/cmp_loop
# perf:utils/string/_startswith调用

data modify storage math:io temp_cmp set from storage math:io temp_p[0].char
execute store success score sres int run data modify storage math:io temp_cmp set from storage math:io temp_t[0].char
execute if score sres int matches 1 run return run scoreboard players set res int 0

data remove storage math:io temp_p[0]
data remove storage math:io temp_t[0]
execute if data storage math:io temp_p[0] run function perf:utils/string/cmp_loop