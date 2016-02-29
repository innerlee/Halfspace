# test/run.jl

set = "set2"
train_data, train_label, validation_data, validation_label, test_data, test_label =
  share(load_data(set))
  
model = boostNet(train_data, train_label', m=2, delta=.5, gamma=1, T=100, B=10)

p = predict(model, train_data)
say("train error: ", mean(p .!= train_label'))

p = predict(model, test_data)
say("test error: ", mean(p .!= test_label'))

say("love huifang")
