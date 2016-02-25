# Halfspace

Codes in Julia.

## Generate Synthetic Data

Uncomment the following code in `run.jl`.
```julia
include("test/gendata.jl")
```
Two datasets `set2.jld` and `set5.jld` will be created in `data/` folder.
It does not override existing files.

# Credits

Implementation of algorithms in "Learning Halfspaces and Neural Networks with Random Initialization" 
by Yuchen Zhang, Jason D. Lee, Martin J. Wainwright, and Michael I. Jordan.

