# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cucumber-rails}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dennis Bl\303\266te", "Aslak Helles\303\270y", "Rob Holland"]
  s.date = %q{2010-06-06}
  s.description = %q{Cucumber Generators and Runtime for Rails}
  s.email = %q{cukes@googlegroups.com}
  s.files = ["spec/cucumber/web/tableish_spec.rb", "spec/generators/cucumber/install/install_base_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/aslakhellesoy/cucumber-rails}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Cucumber Generators and Runtime for Rails}
  s.test_files = ["spec/cucumber/web/tableish_spec.rb", "spec/generators/cucumber/install/install_base_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 0.8.0"])
      s.add_development_dependency(%q<aruba>, [">= 0.1.9"])
    else
      s.add_dependency(%q<cucumber>, [">= 0.8.0"])
      s.add_dependency(%q<aruba>, [">= 0.1.9"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0.8.0"])
    s.add_dependency(%q<aruba>, [">= 0.1.9"])
  end
end
