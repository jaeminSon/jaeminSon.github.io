# coding: utf-8

Gem::Specification.new do |spec|
  
end

Gem::Specification.new do |spec|
  spec.name          = "jaemin"

  spec.homepage      = "https://jaeminson.github.io/"
  spec.license       = "MIT"
  spec.metadata      = {
    "documentation_uri" => "https://jaeminson.github.io/",
  }

  spec.files         = `git ls-files -z ':!:*.jpg' ':!:*.png'`.split("\x0").select { |f| f.match(%r{^(assets|bin|_layouts|_includes|lib|Rakefile|_sass|LICENSE|README|CHANGELOG|favicon)}i) }
  spec.executables   << 'jaemin'

  spec.add_development_dependency "bundler", ">= 2.3.5"
  spec.add_runtime_dependency "jekyll", ">= 3.8.5"
  spec.add_runtime_dependency "jekyll-seo-tag", ">= 2.0"
  spec.add_runtime_dependency "jekyll-include-cache"
  spec.add_runtime_dependency "rake", ">= 12.3.1"
end