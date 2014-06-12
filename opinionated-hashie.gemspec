# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opinionated-hashie/version'

Gem::Specification.new do |spec|
  spec.name          = "opinionated-hashie"
  spec.version       = Opinionated::Hashie::VERSION
  spec.authors       = ["Andrew Burns"]
  spec.email         = ["ErebusBat@gmail.com"]
  spec.summary       = %q{A very opinionated hashie extension.}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "https://github.com/ErebusBat/opinionated-hashie"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hashie", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
