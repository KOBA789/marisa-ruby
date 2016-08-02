# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'marisa/version'

Gem::Specification.new do |spec|
  spec.name          = "marisa"
  spec.version       = Marisa::VERSION
  spec.authors       = ["Hidekazu Kobayashi"]
  spec.email         = ["kobahide789@gmail.com"]

  spec.summary       = %q{Ruby binding for marisa-trie}
  spec.description   = %q{Ruby binding for marisa-trie which is a static and space-efficient trie data structure.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.extensions    = 'ext/marisa/extconf.rb'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "pry"
end
