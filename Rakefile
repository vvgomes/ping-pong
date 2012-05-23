require 'rake'
require 'rspec/core/rake_task'
 
task :default => :spec

n = namespace :spec do
  RSpec::Core::RakeTask.new(:models) do |spec|
    spec.pattern = 'spec/models/*_spec.rb'
  end

  RSpec::Core::RakeTask.new(:acceptance) do |spec|
    spec.pattern = 'spec/acceptance/*_spec.rb'
  end
end

task :spec => [n[:models], n[:acceptance]]
