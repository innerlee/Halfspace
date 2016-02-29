# Halfspace

Implementation of algorithms in "Learning Halfspaces and Neural Networks with Random Initialization" 
by Yuchen Zhang, Jason D. Lee, Martin J. Wainwright, and Michael I. Jordan.

Codes written in Julia.

## Required Packages

Install the following packages,
```julia
Pkg.add("JLD")
Pkg.add("StatsBase")
Pkg.add("Convex")
Pkg.add("SCS")
```

## Generate Synthetic Data

First, you need to generate the synthetic data.
Modify code in `run.jl` as
```julia
#include("test/go.jl")
include("test/gendata.jl")
```
Then type
```julia
include("run.jl")
```
in REPL.
Two datasets `set2.jld` and `set5.jld` will be created in `data/` folder.
It does not override existing files.

## Run

Modify code in `run.jl` as
```julia
include("test/go.jl")
#include("test/gendata.jl")
```
Then type
```julia
include("run.jl")
```
in REPL.

Modify `test/go.jl` to switch dataset or change parameters.

