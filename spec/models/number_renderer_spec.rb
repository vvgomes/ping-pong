require File.expand_path(File.dirname(__FILE__) + '/../../models/number_renderer')

describe NumberRenderer do
	
	it 'should render a non-multiple of 3 or 5' do
		NumberRenderer.new.render(1).should be == '1'
	end

end