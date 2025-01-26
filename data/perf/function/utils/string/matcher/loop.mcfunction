#perf:utils/string/matcher/loop
# perf:utils/string/_match调用

function perf:utils/string/matcher/putchar with storage math:io string_chars[0]
execute if score sres int matches 0 run function perf:utils/string/matcher/check
execute if score sres int matches 1 run function perf:utils/string/matcher/next_char
execute if score sres int matches 2 run function perf:utils/string/matcher/next

execute if score sssloop int matches 1.. run function perf:utils/string/matcher/loop