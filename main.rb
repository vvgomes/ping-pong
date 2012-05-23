require File.expand_path(File.dirname(__FILE__) + '/config/environment')

max = ARGV[0] || 100
puts SequenceRenderer.new(NumberRenderer.new).render(max.to_i)
