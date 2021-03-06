# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_search_form/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_search_form"
  spec.version       = EasySearch::VERSION
  spec.authors       = ["Bruno Cordeiro"]
  spec.email         = ["bfscordeiro@gmail.com"]

  spec.summary       = %q{Make easy create simple search formss.}
  spec.description   = %q{Make easy create simple search formss.}
  spec.homepage      = "https://github.com/brunofrank/easy_search"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
