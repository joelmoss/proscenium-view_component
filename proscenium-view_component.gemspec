# frozen_string_literal: true

require_relative 'lib/proscenium/view_component/version'

Gem::Specification.new do |spec|
  spec.name = 'proscenium-view_component'
  spec.version = Proscenium::ViewComponent::VERSION
  spec.authors = ['Joel Moss']
  spec.email = ['joel@developwithstyle.com']

  spec.summary = 'Proscenium integration for ViewComponent'
  spec.description = 'Proscenium integration for ViewComponent'
  spec.homepage = 'https://github.com/joelmoss/proscenium-view_component'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.3.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/releases"
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'proscenium', '~> 0.19.0'
  spec.add_dependency 'rails', ['>= 7.1.0', '< 9.0']
  spec.add_dependency 'view_component', '~> 3.22.0'
end
