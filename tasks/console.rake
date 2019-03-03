desc 'Load gem inside irb console'
task :console do
  require 'irb'
  require 'irb/completion'
  require File.join(__FILE__, '../../lib/merkle_tree')
  ARGV.clear
  IRB.start
end
task c: %w[ console ]