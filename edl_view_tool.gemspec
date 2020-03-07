require_relative 'lib/edl_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "edl_view_tool"
  spec.version       = EdlViewTool::VERSION
  spec.authors       = ["Erik D. Lindquist"]
  spec.email         = ["el.3079@gmail.com"]

  spec.summary       = %q{View specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "https://eriklindquist.io"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
