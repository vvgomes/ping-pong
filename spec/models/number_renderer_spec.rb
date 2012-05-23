require File.expand_path(File.dirname(__FILE__) + '/../../models/number_renderer')

describe NumberRenderer do
	
	before :each do
		@renderer = NumberRenderer.new
	end

	it 'should render a non-multiple of 3 or 5' do
		@renderer.render(1).should be == '1'
	end

	it 'should render "ping" for a multiple of 3' do
		@renderer.render(3).should be == 'ping'
	end

	it 'should render "pong" for a multiple of 5' do
		@renderer.render(5).should be == 'pong'
	end

	it 'should render "p*ng" for a multiple of 3 and 5' do
		@renderer.render(15).should be == 'p*ng'
	end

end