#called by #module/load

data modify storage launch:module list append value "Synthesisers"
data modify storage launch:module list append from storage launch:module list_split
