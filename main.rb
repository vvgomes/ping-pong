require File.expand_path(File.dirname(__FILE__) + '/models/number_renderer')

renderer = NumberRenderer.new
max = ARGV[0].to_i

result = (1..max).map do |n|
	renderer.render(n)
end

puts result.join(', ')