require 'rake/testtask'

namespace :spec do
  Rake::TestTask.new(:models) do |t| 
    t.pattern = 'spec/models/*_spec.rb' 
    t.verbose = true 
  end 
end
