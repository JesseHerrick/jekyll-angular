# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/angular/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-angular"
  spec.version       = Jekyll::Angular::VERSION
  spec.authors       = ["Jesse Herrick"]
  spec.email         = ["jessegrantherrick@gmail.com"]

  spec.summary       = %q{A simple AngularJS plugin for Jekyll.}
  spec.homepage      = "https://github.com/JesseHerrick/jekyll-angular"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "jekyll"
end