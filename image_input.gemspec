# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'image_input/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'image_input'
  spec.version     = ImageInput::VERSION
  spec.authors     = ['Andrew Katz']
  spec.email       = ['andrew.katz@hey.com']
  spec.homepage    = 'https://github.com/andrewkatz/image_input'
  spec.summary     = 'A simple image input for Rails and Active Storage.'
  spec.description = 'A simple image input for Rails and Active Storage.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 6', '< 7'

  spec.required_ruby_version = '~> 2.4'
end
