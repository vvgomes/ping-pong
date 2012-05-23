require File.expand_path(File.dirname(__FILE__) + '/config/environment')

max = ARGV[0].to_i
puts SequenceRenderer.new(NumberRenderer.new).render(max)
