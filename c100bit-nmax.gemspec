Gem::Specification.new do |spec|
  spec.authors       = ["c100bit"]
  spec.email         = ["c100bit@gmail.com"]
  spec.description   = %q{Find top numbers}
  spec.summary       = ""
  spec.homepage      = ""
  spec.license       = 'MIT'
  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = "c100bit-nmax"
  spec.require_paths = ["lib"]
  spec.version       = '0.2.2'
end