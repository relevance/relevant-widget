require 'rake'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :install do
  `gem build relevant-widget.gemspec`
  `gem install relevant-widget-0.0.1.gem`
end