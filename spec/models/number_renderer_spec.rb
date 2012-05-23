require File.expand_path(File.dirname(__FILE__) + '/../../models/number_renderer')

describe NumberRenderer do
	
	before :each do
		@renderer = NumberRenderer.new
	end

	it 'should render a non-multiple of 3 or 5' do
		@renderer.render(1).should == '1'
	end

	it 'should render "ping" for a multiple of 3' do
		@renderer.render(3).should == 'ping'
	end

	it 'should render "pong" for a multiple of 5' do
		@renderer.render(5).should == 'pong'
	end

	it 'should render "p*ng" for a multiple of 3 and 5' do
		@renderer.render(15).should == 'p*ng'
	end

end