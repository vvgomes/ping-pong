describe 'A Ping Pong App user' do
	
  MAIN = File.expand_path(File.dirname(__FILE__) + "/../../main.rb")

  it 'should see 4 pings, 2 pongs and a p*ng for "15" as input' do
    expected_stdout = "1, 2, ping, 4, pong, ping, 7, 8, ping, pong, 11, ping, 13, 14, p*ng\n"
    `ruby #{MAIN} 15`.should == expected_stdout
  end

end