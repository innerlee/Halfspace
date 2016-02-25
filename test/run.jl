# test/run.jl

set = "set2"
train_data, train_label, validation_data, validation_label, test_data, test_label =
  share(load_data(set))

alg2()
alg3()
alg4()
say("love huifang")
