export  
    say,              # debug output
    @verbose_say,     # define say according to verbose
    timestr,          # time string, useful for file names
    floatstr,         # short float string
    load_data,        # load synthetic data
    generate_data     # generate synthetic data

""" debug output """
say = println

""" 
if :verbose not defined, do nothing; 
if verbose true, define say as println; 
else mute say. 
"""
macro verbose_say()
  return esc(quote
    isdefined(:verbose) && (say = verbose ? println : (sth...) -> nothing)
  end) 
end

""" time string, useful for file names, etc. """
timestr() = "$(Dates.format(now(),"yyyymmdd-HHMMSS"))"

""" short float string """
floatstr(num, precision=1000) = "$(floor(num*precision)/precision)"

""" load synthetic data """
function load_data()
  say("load data not implemented yet")
end

""" generate synthetic data """
function generate_data()
  isdir("data") || mkdir("data")
  say("generate data not implemented yet")
end
