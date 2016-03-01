# run the algorithm to test 2 layer boostNet

dataset = "set5" # "set2", "set5"
train_data, train_label, validation_data, validation_label, test_data, test_label =
  share(load_data(dataset))
  
model = boostNet(train_data, train_label', m=2, T=1000, B=10)

say()
p = predict(model, train_data)
say("train error: ", mean(p .!= train_label'))

p = predict(model, test_data)
say("test error: ", mean(p .!= test_label'))

say("love huifang")
