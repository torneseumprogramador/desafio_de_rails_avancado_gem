# frozen_string_literal: true

require_relative "lib/desafio_de_rails_avancado/version"

Gem::Specification.new do |spec|
  spec.name = "desafio_de_rails_avancado"
  spec.version = DesafioDeRailsAvancado::VERSION
  spec.authors = ["Danilo Aparecido dos Santos"]
  spec.email = ["didox_59@yahoo.com.br"]

  spec.summary = "Uma gem para fazer criptografia baseado no jwt"
  spec.description = "Uma gem feita no treinamento desafio de rails avançado"
  spec.homepage = "https://www.torneseumprogramador.com.br/cursos/ruby_avancado"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/torneseumprogramador/desafio_de_rails_avancado_gem"
  spec.metadata["changelog_uri"] = "https://github.com/torneseumprogramador/desafio_de_rails_avancado_gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency 'jwt', '~> 2.7'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
