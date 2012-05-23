require File.expand_path(File.dirname(__FILE__) + '/../../models/sequence_renderer')

describe SequenceRenderer do
  
  before :each do
    num_renderer = mock
    num_renderer.stub(:render).with(3).and_return 'ping'
    num_renderer.stub(:render).with(5).and_return 'pong'
    [1, 2, 4].each do |n| 
      num_renderer.stub(:render).with(n).and_return n.to_s
     end 
    @renderer = SequenceRenderer.new(num_renderer)
  end

  it 'should render a sequence form 1 to 1' do
    @renderer.render(1).should == '1'
  end

  it 'should render a sequence from 1 to 5' do
    expected_output = '1, 2, ping, 4, pong'
    @renderer.render(5).should == expected_output
  end

end