export  
    say,                    # debug output
    @verbose_say,           # rewrite definition of `say` according value of `verbose`
    timestr,                # time string, useful for file names
    floatstr,               # short float string
    load_data           # load synthetic data

""" debug output """
function say(sth...)
  println(sth...)
end

""" rewrite definition of `say` according value of `verbose` """
macro verbose_say()
  return esc(quote
    say = verbose ? (sth...) -> println(sth...) : say = (sth...) -> nothing
  end) 
end

""" time string, useful for file names """
function timestr()
  "$(Dates.format(now(),"yyyymmdd-HHMMSS"))"
end

""" short float string """
function floatstr(num, precision=1000)
  "$(floor(num*precision)/precision)"
end

""" load synthetic data """
function load_data()
  say("load data not implemented yet")
end
