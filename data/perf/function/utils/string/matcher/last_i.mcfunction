#perf:utils/string/matcher/last_i
# perf:utils/string/_match调用

data modify storage math:io string_chars prepend from storage math:io string_chars[-1]
data remove storage math:io string_chars[-1]
scoreboard players remove string_phi int 1

scoreboard players remove sstemp_cnt int 1
execute if score sstemp_cnt int matches 1.. run function perf:utils/string/matcher/last_i