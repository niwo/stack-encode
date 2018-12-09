# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stack-encode/version'

Gem::Specification.new do |spec|
  spec.name          = "stack-encode"
  spec.version       = StackEncode::VERSION
  spec.authors       = ["Nik Wolfgramm"]
  spec.email         = ["nik.wolfgramm@swisstxt.ch"]
  spec.description   = %q{A simple gem for automating the encoding process with ffmpeg}
  spec.summary       = %q{stack-encode - automating the encoding process with ffmpeg}
  spec.homepage      = "https://github.com/swisstxt/stack-encode"
  spec.license       = "MIT"

  spec.files                  = `git ls-files`.split($/)
  spec.executables            = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files             = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths          = ["lib"]
  spec.required_ruby_version  = '>= 2.0.0'

  spec.add_dependency "thor", "~> 0.20.0 "
  spec.add_dependency "streamio-ffmpeg", "~> 3.0.2"

  spec.add_development_dependency "bundler", "~> 1.17.1"
  spec.add_development_dependency "rake"
end
