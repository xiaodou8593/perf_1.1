#perf:data/data_100/_start

data modify storage perf:io data set value []
data modify storage perf:io temp set value ["string","string","string","string","string","string","string","string","string","string"]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
data modify storage perf:io data append from storage perf:io temp[]
scoreboard players set data_n int 100