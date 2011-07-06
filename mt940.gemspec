# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mt940}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["dovadi"]
  s.date = %q{2011-07-05}
  s.description = %q{A basic MT940 parser with implementations for Dutch banks.}
  s.email = %q{frank.oxener@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "CHANGELOG",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/mt940.rb",
    "lib/mt940/banks/abnamro.rb",
    "lib/mt940/banks/ing.rb",
    "lib/mt940/banks/rabobank.rb",
    "lib/mt940/banks/triodos.rb",
    "lib/mt940/base.rb",
    "lib/mt940/transaction.rb",
    "mt940.gemspec",
    "test/fixtures/abnamro.txt",
    "test/fixtures/ing.txt",
    "test/fixtures/rabobank.txt",
    "test/fixtures/triodos.txt",
    "test/fixtures/unknown.txt",
    "test/helper.rb",
    "test/test_mt940_abnamro.rb",
    "test/test_mt940_base.rb",
    "test/test_mt940_ing.rb",
    "test/test_mt940_rabobank.rb",
    "test/test_mt940_triodos.rb"
  ]
  s.homepage = %q{http://github.com/dovadi/mt940}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{MT940 parser}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.2"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.2"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.2"])
  end
end
