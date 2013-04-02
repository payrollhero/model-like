# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'model-like/version'

Gem::Specification.new do |spec|
  spec.name          = "model-like"
  spec.version       = ModelLike::VERSION
  spec.authors       = ["Suman Mukherjee"]
  spec.email         = ["sumanmukherjee03@gmail.com"]
  spec.description   = %q{A gem that makes your class behave like models}
  spec.summary       = %q{Makes your classes behave like models}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel"
  spec.add_dependency "virtus"
  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
