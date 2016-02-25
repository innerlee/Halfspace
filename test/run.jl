# test/run.jl

set = "set2"
train_data, train_label, validation_data, validation_label, test_data, test_label =
  share(load_data(set))
  
d = size(train_data, 1)
k, T = (10, 1)

alg2()
alg3()
#boostNet()
say("love huifang")
