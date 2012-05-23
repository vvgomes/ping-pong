describe 'A Ping Pong App user' do
	
  MAIN = File.expand_path(File.dirname(__FILE__) + "/../../main.rb")
  SAMPLE = File.expand_path(File.dirname(__FILE__) + "/../../sample_output.txt")

  it 'should see pings, pongs and a single p*ng when providing "15" as argument' do
    expected_stdout = "1, 2, ping, 4, pong, ping, 7, 8, ping, pong, 11, ping, 13, 14, p*ng\n"
    `ruby #{MAIN} 15`.should == expected_stdout
  end

  it 'should see a lot of pings, pongs, p*ngs for the default argument' do
  	expected_stdout = File.open(SAMPLE, 'r').read
  	`ruby #{MAIN}`.should == expected_stdout
  end

  it 'should see an error message when providing an invalid argument' do
  	expected_stdout = "If you provide an argument, it must be a number > 0.\n"
    `ruby #{MAIN} foo`.should == expected_stdout
  end

end