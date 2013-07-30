# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './lib/version'

Gem::Specification.new do |spec|
  spec.name          = "filemanager"
  spec.version       = Filemanager::VERSION
  spec.authors       = ["Leon Li", "Great Azazello"]
  spec.email         = "GreatAzazello@gmail.com"
  spec.description   = <<-EOF
    A online file manager for rails project, support file/folder actions such as browse, create, rename, remove, copy, move, zip download, upload, unzip, view
  EOF
  spec.summary       = "A online file manager for rails project"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rails", "~> 3.2"
  spec.add_development_dependency "sprockets"
  spec.add_development_dependency "haml-rails"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
