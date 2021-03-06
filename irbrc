require 'irb/completion'

begin
  require 'recurly'
  print "Using Recurly gem, version: " + Recurly::Version.to_s + "\n"
  require 'awesome_print'
  print "Using Awesome Print gem \n"
  AwesomePrint.irb!
  require 'pry'
  print "Using pry gem \n"
rescue LoadError => err
  warn "Couldn't load requirement: #{err}"
end

IRB.conf[:EVAL_HISTORY] = 1_000
IRB.conf[:SAVE_HISTORY] = 1_000
IRB.conf[:HISTORY_FILE] = File::expand_path("~/.irbhistory")
