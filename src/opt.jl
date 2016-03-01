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
  set_default_solver(SCSSolver(verbose=0))
  A = x'
  b = u'
  m, n = size(A)
  
  w = Variable(n)
  problem = minimize(sumsquares(A * w - b), [sumsquares(w) <= B^2])
  
  solve!(problem)
  
  problem.status == :Optimal && print(".")

  w.value'
end
