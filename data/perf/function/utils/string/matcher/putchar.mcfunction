#perf:utils/string/matcher/putchar
# perf:utils/string/matcher/loop调用

$execute unless data storage math:io input[0].'$(char)' run return run scoreboard players set sres int 0
scoreboard players set sres int 1
scoreboard players add sstemp_cur int 1
execute if score sstemp_cur int > sstemp_max int run scoreboard players set sres int 2
scoreboard players operation sstemp_cur int < sstemp_max int