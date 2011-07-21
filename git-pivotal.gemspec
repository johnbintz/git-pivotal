# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{git-pivotal}
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Tucker", "Sam Stokes"]
  s.date = %q{2011-05-11}
  s.description = %q{A collection of git utilities to ease integration with Pivotal Tracker}
  s.email = %q{jeff@trydionel.com}
  s.executables = ["git-bug", "git-chore", "git-feature", "git-finish", "git-info", "git-pick"]
  s.extra_rdoc_files = [
    "LICENSE"
  ]
  s.files = [
    "CHANGELOG",
    "Gemfile",
    "LICENSE",
    "Rakefile",
    "VERSION",
    "bin/git-bug",
    "bin/git-chore",
    "bin/git-feature",
    "bin/git-finish",
    "bin/git-info",
    "bin/git-pick",
    "features/bug.feature",
    "features/chore.feature",
    "features/feature.feature",
    "features/finish.feature",
    "features/info.feature",
    "features/step_definitions/steps.rb",
    "features/support/env.rb",
    "features/support/git-pivotal.rb",
    "features/test_repo/readme",
    "features/test_repo/working.git/COMMIT_EDITMSG",
    "features/test_repo/working.git/HEAD",
    "features/test_repo/working.git/config",
    "features/test_repo/working.git/description",
    "features/test_repo/working.git/hooks/applypatch-msg.sample",
    "features/test_repo/working.git/hooks/commit-msg.sample",
    "features/test_repo/working.git/hooks/post-commit.sample",
    "features/test_repo/working.git/hooks/post-receive.sample",
    "features/test_repo/working.git/hooks/post-update.sample",
    "features/test_repo/working.git/hooks/pre-applypatch.sample",
    "features/test_repo/working.git/hooks/pre-commit.sample",
    "features/test_repo/working.git/hooks/pre-rebase.sample",
    "features/test_repo/working.git/hooks/prepare-commit-msg.sample",
    "features/test_repo/working.git/hooks/update.sample",
    "features/test_repo/working.git/index",
    "features/test_repo/working.git/info/exclude",
    "features/test_repo/working.git/logs/HEAD",
    "features/test_repo/working.git/logs/refs/heads/master",
    "features/test_repo/working.git/objects/0c/6f7b1384910d1a2f137590095f008a06c7e00c",
    "features/test_repo/working.git/objects/10/ecf2b7ce989f01f3f7266e712b48d9275f2635",
    "features/test_repo/working.git/objects/a5/71d56305df09fb060f6ccb730b46080d305beb",
    "features/test_repo/working.git/refs/heads/master",
    "git-pivotal.gemspec",
    "lib/commands/base.rb",
    "lib/commands/bug.rb",
    "lib/commands/chore.rb",
    "lib/commands/feature.rb",
    "lib/commands/finish.rb",
    "lib/commands/info.rb",
    "lib/commands/pick.rb",
    "lib/git-pivotal.rb",
    "readme.markdown",
    "spec/commands/base_spec.rb",
    "spec/commands/bug_spec.rb",
    "spec/commands/chore_spec.rb",
    "spec/commands/feature_spec.rb",
    "spec/commands/finish_spec.rb",
    "spec/factories.rb",
    "spec/factory.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/trydionel/git-pivotal}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A collection of git utilities to ease integration with Pivotal Tracker}
  s.test_files = [
    "spec/commands/base_spec.rb",
    "spec/commands/bug_spec.rb",
    "spec/commands/chore_spec.rb",
    "spec/commands/feature_spec.rb",
    "spec/commands/finish_spec.rb",
    "spec/factories.rb",
    "spec/factory.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<pivotal-tracker>, ["~> 0.3.1"])
      s.add_runtime_dependency(%q<git-pivotal>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.9.2"])
      s.add_development_dependency(%q<aruba>, ["~> 0.2.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.9.2"])
      s.add_development_dependency(%q<aruba>, ["~> 0.2.3"])
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<pivotal-tracker>, ["~> 0.3.1"])
      s.add_runtime_dependency(%q<babosa>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.9.2"])
      s.add_development_dependency(%q<aruba>, ["~> 0.2.3"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<pivotal-tracker>, ["~> 0.3.1"])
      s.add_dependency(%q<git-pivotal>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<cucumber>, ["~> 0.9.2"])
      s.add_dependency(%q<aruba>, ["~> 0.2.3"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<cucumber>, ["~> 0.9.2"])
      s.add_dependency(%q<aruba>, ["~> 0.2.3"])
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<pivotal-tracker>, ["~> 0.3.1"])
      s.add_dependency(%q<babosa>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<cucumber>, ["~> 0.9.2"])
      s.add_dependency(%q<aruba>, ["~> 0.2.3"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<pivotal-tracker>, ["~> 0.3.1"])
    s.add_dependency(%q<git-pivotal>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<cucumber>, ["~> 0.9.2"])
    s.add_dependency(%q<aruba>, ["~> 0.2.3"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<cucumber>, ["~> 0.9.2"])
    s.add_dependency(%q<aruba>, ["~> 0.2.3"])
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<pivotal-tracker>, ["~> 0.3.1"])
    s.add_dependency(%q<babosa>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<cucumber>, ["~> 0.9.2"])
    s.add_dependency(%q<aruba>, ["~> 0.2.3"])
  end
end

