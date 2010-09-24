# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{relevant-widget}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jared Pace", "Rob Sanheim"]
  s.date = %q{2010-09-24}
  s.description = %q{Base class to do widgets for the Relevant raditor}
  s.email = %q{opensource@thinkrelevance.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "README.md",
     "Rakefile",
     "lib/relevant/relevant.rb",
     "lib/relevant/renderer.rb",
     "lib/relevant/version.rb",
     "lib/relevant/widget.rb",
     "relevant-widget.gemspec",
     "spec/relevant/relevant_spec.rb",
     "spec/relevant/renderer_spec.rb",
     "spec/relevant/widget_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/relevance/relevant-widget}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Base widget class for your mind!}
  s.test_files = [
    "spec/relevant/relevant_spec.rb",
     "spec/relevant/renderer_spec.rb",
     "spec/relevant/widget_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tilt>, ["= 1.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0.beta.22"])
    else
      s.add_dependency(%q<tilt>, ["= 1.1"])
      s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.22"])
    end
  else
    s.add_dependency(%q<tilt>, ["= 1.1"])
    s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.22"])
  end
end

