require_relative 'lib/jbboisseau_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "jbboisseau_view_tool"
  spec.version       = JbboisseauViewTool::VERSION
  spec.authors       = ["JB Boisseau"]
  spec.email         = ["jb.boisseau@gmail.com"]

  spec.summary       = %q{Show copyright with your name on it.}
  spec.description   = %q{Provides generated HTML date for Rails app.}
  spec.homepage      = "http://www.jbboisseau.fr"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
