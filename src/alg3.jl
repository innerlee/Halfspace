export
    alg3  # Algorithm for learning neural networks

""" 
    Algorithm for learning neural networks (we only implement one layer yet.)
    
arguments:
  
  features,     column vectors
  labels
  m,            # of layers
  k,            sample k points (10)
  s,            # of hidden nodes of last layer, not relevant if m = 1
  T,            repeat T rounds
  B,            [-B, B]^k cube (10)
  weight,       default to []
    
"""
function alg3(features, labels; m=1, k=10, s=1, T=1, B=10, weight=[])
  d, n = size(features) # feature dim
  
  n == length(labels) || error("alg2: column number of features should equal to number of labels")  
  n >= k || error("alg3: sample size (=$n) should > k (=$k)")
  m <: Int && m > 0 || error("alg3: `m` cannot be `$m`")
  m == 1 || error("alg3: higher layer network not implemented yet")
  T == 1 || error("alg3: support T = 1 only")
  
  # sample k points w.r.t. weight
  ind = weight == [] ? sample(1:n, k, replace=false) : 
    sample(1:n, WeightVec(weight), k, replace=false)
    
  x = features[:, ind]
  y = labels[ind]'
  
  assert(size(y) == (1, k))
  
  # draw u
  u = B * rand(k)'
  
  # find v
  v = opt(x, u, B)
end
