# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'marisa/version'

Gem::Specification.new do |spec|
  spec.name          = "marisa"
  spec.version       = Marisa::VERSION
  spec.authors       = ["Hidekazu Kobayashi"]
  spec.email         = ["kobahide789@gmail.com"]
  spec.licenses         = ["BSD-2-Clause"]

  spec.summary       = %q{Ruby binding for marisa-trie}
  spec.description   = %q{Ruby binding for marisa-trie which is a static and space-efficient trie data structure.}
  spec.homepage      = "https://github.com/koba789/marisa-ruby"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.extensions    = 'ext/marisa/extconf.rb'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 11.1"
  spec.add_development_dependency "rake-compiler", "~> 1.0"
  spec.add_development_dependency "pry", "~> 0.10"
end
