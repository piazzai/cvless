# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "cvless"
  spec.version       = "2.6.0"
  spec.authors       = ["piazzai"]
  spec.email         = ["42124135+piazzai@users.noreply.github.com"]

  spec.summary       = "Jekyll theme for a beautiful online CV "
  spec.homepage      = "https://github.com/piazzai/cvless"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "github-pages", "~> 232"
  spec.add_runtime_dependency "jekyll-paginate-v2", "~> 3.0"
end
