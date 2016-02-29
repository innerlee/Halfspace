# set module path to load svmspy
any(LOAD_PATH .== cd(pwd, "..")) || push!(LOAD_PATH, cd(pwd, ".."))
import Halfspace
@everywhere using Halfspace

include("test/go.jl")
#include("test/gendata.jl")
