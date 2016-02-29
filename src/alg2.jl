export
    alg2  # Learning halfspaces based on a least-squares problem.

""" 
Learning halfspaces based on initializing from the solution of 
a least-squares problem. 
"""
function alg2(features, labels; k=10, T=1, weight=[])
  d, n = size(features) # feature dim
  w = [];
  for t = 1:T
    # sample k points w.r.t. weight
    
    # sample u
    
    # find v
    
    # try some variants of v and select the best one as w_t, update w if better
    
  end
  
end

say("love from 2")
