# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ull-etsii-alu4214-quiz/version"

Gem::Specification.new do |s|
  s.name        = "ull-etsii-alu4214-quiz"
  s.version     = Ull::Etsii::Alu4214::Quiz::VERSION
  s.authors     = ["Alan92"]
  s.email       = ["alan_92_@hotmail.es"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "ull-etsii-alu4214-quiz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
