require File.expand_path(File.dirname(__FILE__) + '/config/environment')

max = ARGV[0] ? ARGV[0].to_i : 100

if max > 0
  puts SequenceRenderer.new(NumberRenderer.new).render(max)
else
  puts 'If you provide an argument, it must be a number > 0.'
end

