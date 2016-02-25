# gendata.jl
# generate data

isfile("data/set2.jld") || generate_data(name="set2", p=2)
isfile("data/set5.jld") || generate_data(name="set5", p=5)

say("done.")
