# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wellcome/version'

Gem::Specification.new do |spec|
  spec.name          = "wellcome"
  spec.version       = Wellcome::VERSION
  spec.authors       = ["mystreie1126"]
  spec.email         = ["mystreie1126@hotmail.com"]
  spec.summary       = %q{Welcome message.}
  spec.description   = %q{Welcome message.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
