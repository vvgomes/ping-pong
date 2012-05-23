#load models
Dir.glob(File.expand_path(File.dirname(__FILE__)+'/../models/*.rb')).each{|f| require f}