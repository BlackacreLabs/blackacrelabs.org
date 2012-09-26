require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

namespace :coverage do
  task :spec do
    ENV['COVERAGE'] = 'true'
    Rake::Task[:spec].execute
  end

  task :features do
    ENV['COVERAGE'] = 'true'
    Rake::Task[:features].execute
  end
end

task :default => :spec
