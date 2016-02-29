# test/run.jl

set = "set2"
train_data, train_label, validation_data, validation_label, test_data, test_label =
  share(load_data(set))
  
d = size(train_data, 1)
B = 10 
delta = 0.5 # 1 - delta is the probability of get good predictor
gamma = 0.1 # gamma separable data
k, T = (10, 1)

alg3()
#boostNet()
say("love huifang")
