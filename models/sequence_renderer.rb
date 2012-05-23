class SequenceRenderer

	def initialize num_renderer
    @num_renderer = num_renderer
	end

  def render max
    (1..max).map{ |n| @num_renderer.render(n) }.join(', ')
  end

end