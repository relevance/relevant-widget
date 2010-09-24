Gem::Specification.new do |s|
  s.name = %q{relevant-widget}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jdpace, rsanheim"]
  s.date = %q{2010-09-24}
  s.description = %q{Relevant Widget Core}
  s.email = %q{jared@thinkrelevance.com}
  s.files  = ['Rakefile','README.md']
  s.files += Dir['lib/**/*.rb']
  s.homepage = %q{http://github.com/relevance/relevant-widget}
  s.add_dependency "tilt", '1.1'
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Provides base functionalit for widgets. This is meant to be a dependency of all Relevant widgets.}
  s.test_files = Dir['spec/**/*.rb']
end

