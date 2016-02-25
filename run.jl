# set module path to load svmspy
any(LOAD_PATH .== cd(pwd, "..")) || push!(LOAD_PATH, cd(pwd, ".."))
import Halfspace
@everywhere using Halfspace

include("test/run.jl")
#include("test/gendata.jl")
