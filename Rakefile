require 'rake'
require File.dirname(__FILE__) + "/lib/relevant/version.rb"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.version = Relevant::Version
    gemspec.name = "relevant-widget"
    gemspec.summary = "Base widget class for your mind!"
    gemspec.description = "Base class to do widgets for the Relevant raditor"
    gemspec.email = "opensource@thinkrelevance.com"
    gemspec.homepage = "http://github.com/relevance/relevant-widget"
    gemspec.authors = ["Jared Pace", "Rob Sanheim"]
    gemspec.add_dependency "tilt", "1.1"
    gemspec.add_dependency "active_support", "~> 3.0.0"
    gemspec.add_development_dependency "rspec", "~> 2.0.0.beta.22"
  end
  Jeweler::GemcutterTasks.new
  
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec
