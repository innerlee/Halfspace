export
    opt  # least square solver
    
"""
    solve the least square problem
    
arguments:

  x,
  u,
  B,
  
"""
function opt(x, u, B)
  A = x'
  b = u'
  m, n = size(A)
  
  w = Variable(n)
  problem = minimize(sumsquares(A * w - b), [sumsquares(w) <= B^2])
  
  solve!(problem)
  
  ans = w.value'
  say(problem.status, ", w^2 = ", (ans * ans')[1])

  ans
end
