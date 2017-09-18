# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aes/cbc/version"

Gem::Specification.new do |spec|
  spec.name          = "aes-cbc"
  spec.version       = AES::CBC::VERSION
  spec.authors       = ["nori3tsu"]
  spec.email         = ["tugend.licht@gmail.com"]

  spec.summary       = 'This is an easy-to-use encryption library specialized for aes-128-cbc.'
  spec.description   = 'This is an easy-to-use encryption library specialized for aes-128-cbc.'
  spec.homepage      = "https://github.com/nori3tsu/aes-cbc"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
