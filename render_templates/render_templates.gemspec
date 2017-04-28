# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'render_templates/version.rb'

Gem::Specification.new do |spec|
  spec.name = 'render_templates'
  spec.version = RenderTemplates::VERSION
  spec.authors = ['chandru']
  spec.email = ['chandrut -at- thoughtworks -dot- com']
  spec.summary = ['Renders templates, renders properties files']
  spec.description = ['Using values and templates renders properties files']
  spec.homepage = ''
  spec.license = 'MIT'

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'json'
  spec.add_development_dependency 'pry'

  spec.add_dependency 'chef', '12.3.0'

end

