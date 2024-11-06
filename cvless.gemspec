# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "cvless"
  spec.version       = "2.2.0"
  spec.authors       = ["piazzai"]
  spec.email         = ["42124135+piazzai@users.noreply.github.com"]

  spec.summary       = "Jekyll theme for a beautiful online CV "
  spec.homepage      = "https://github.com/piazzai/cvless"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3", ">= 4.3.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17.0"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-paginate-v2", "~> 3.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
end
