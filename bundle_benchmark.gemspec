# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundle_benchmark/version'

Gem::Specification.new do |spec|
  spec.name          = "bundle_benchmark"
  spec.version       = BundleBenchmark::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]
  spec.description   = %q{Because loading gems can take longer than you think}
  spec.summary       = %q{Because loading gems can take longer than you think}
  spec.homepage      = "https://github.com/ankane/bundle_benchmark"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
