export
    alg3  # Algorithm for learning neural networks

""" Algorithm for learning neural networks """
function alg3(features, labels; m=2, k=10, s=1, T=1, B=10, weight=[])
  d, n = size(features) # feature dim
  m <: Int && m > 0 || error("`m` cannot be `$m`")
  # sample k points w.r.t. weight
  
  if m == 1
  
  else
  
  end

  say("love from 3")
end
