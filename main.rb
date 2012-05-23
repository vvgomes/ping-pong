require File.expand_path(File.dirname(__FILE__) + '/models/number_renderer')
require File.expand_path(File.dirname(__FILE__) + '/models/sequence_renderer')

max = ARGV[0].to_i
puts SequenceRenderer.new(NumberRenderer.new).render(max)
