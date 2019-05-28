# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statsd/instrument/version'

Gem::Specification.new do |spec|
  spec.name        = "h4-statsd-instrument"
  spec.version     = StatsD::Instrument::VERSION
  spec.authors     = ["Jesse Storimer", "Tobias Lutke", "Willem van Bergen", "Michael Watts"]
  spec.email       = ["jesse@shopify.com"]
  spec.homepage    = "https://github.com/TetrationAnalytics/statsd-instrument"
  spec.summary     = %q{A StatsD client for Ruby apps}
  spec.description = %q{A StatsD client for Ruby apps. Provides metaprogramming methods to inject StatsD instrumentation into your code.}
  spec.license     = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'benchmark-ips'
end
