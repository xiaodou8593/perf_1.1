#perf:utils/string/matcher/next_char

data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]
scoreboard players add string_phi int 1
scoreboard players add sstemp_cnt int 1

execute if score string_phi int < string_n int run return 0

execute if score sstemp_cur int < sstemp_min int run return run scoreboard players set res int 0
function perf:utils/string/matcher/next

execute if score sssloop int matches 1.. run function perf:utils/string/matcher/min_check