# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{subshifter}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Phil Kates"]
  s.date = %q{2009-10-04}
  s.default_executable = %q{subshifter}
  s.description = %q{Short program to shift timecodes in srt files}
  s.email = %q{me@philkates.com}
  s.executables = ["subshifter"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".yardoc",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "autotest/discover.rb",
     "bin/subshifter",
     "examples/main.rb",
     "lib/subshifter.rb",
     "lib/timecode.rb",
     "samples/SurfsUp.srt",
     "spec/helper.rb",
     "spec/spec_helper.rb",
     "spec/subshifter_spec.rb",
     "spec/timecode_spec.rb",
     "subshifter.gemspec"
  ]
  s.homepage = %q{http://github.com/philk/subshifter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Subtitle shifting challenge from RubyLearning}
  s.test_files = [
    "spec/helper.rb",
     "spec/spec_helper.rb",
     "spec/subshifter_spec.rb",
     "spec/timecode_spec.rb",
     "examples/main.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
