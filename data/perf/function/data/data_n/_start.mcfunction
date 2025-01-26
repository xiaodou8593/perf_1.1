#perf:data/data_n/_start

recipe give @p *
data modify storage perf:io data set from entity @p recipeBook.recipes
recipe take @p *

data modify storage perf:io temp set value []
scoreboard players operation perf_loop int = data_n int
execute if score perf_loop int matches 1.. run function perf:data/data_n/get_loop

data modify storage perf:io data set from storage perf:io temp