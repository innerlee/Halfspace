export
    boostNet,   # BoostNet
    sigma,      # activition function
    Net2,       # two layer boost net model
    predict,    # output +-1
    normalize1  # normalize to be weight 1 

""" 
    BoostNet 

arguments:

  features,     column vectors
  labels,
  m,            # of layers (2)
  delta,        # 1 - delta is the probability of getting a good result
  gamma,        # gamma separable
  T,            # of hidden nodes
  B,            [-B, B]^k cube (10)
  
note:
  delta, gamma, not used.
  
"""
function boostNet(features, labels; m=2, delta=.5, gamma=1, T=10, B=10)
  d, n = size(features) # feature dim
  size(labels) == (1, n) || error("boostNet: column number of features should equal to number of labels")  

  net = Net2(zeros(T), zeros(T, d))  # init f0 = 0, b0 = 0
  
  for t = 1:T
    alpha = normalize1(exp(-labels .* sigma(evaluate(net, features))))
    
    assert(size(alpha) == (1, n))
    
    w = alg3(features, labels, m=1, k=10, T=1, B=10, weight=alpha[:])
    
    assert(size(w) == (1, d))
    
    G = sum(alpha .* sigma(-labels .* (w * features)))
    
    mu = max(-.5, G)
    b = .5 * log((1 - mu) / (1 + mu))
    net.b[t] = b
    net.W[t, :] = w
  end
  
  net
end

" normalize to be weight 1 "
normalize1(v) = v / sum(v)

" activition function "
sigma = tanh

" two layer boost net model "
type Net2
  b     # a column vector
  W    # w matrix, each row is a w
end

" output value "
evaluate(m::Net2, features) = sum(sigma(m.W * features) .* m.b, 1)
#evaluate(m::Net2, features) = sum((m.W * features) .* m.b, 1)

" output +-1 "
predict(m::Net2, features) = (evaluate(m, features) .> 0) * 2 - 1
