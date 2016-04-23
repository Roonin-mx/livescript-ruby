require_relative 'lib/livescript/version'

Gem::Specification.new do |s|
  s.name     = 'livescript'
  s.version  = LiveScript::VERSION
  s.authors  = ['Victor Hugo Borja', 'Bian Jiaping']
  s.email    = ['vic.borja@gmail.com', 'ssbianjp@gmail.com']
  s.homepage = 'http://github.com/Roonin-mx/livescript-ruby'
  s.license  = 'MIT'

  s.summary     = 'Ruby LiveScript Compiler'
  s.description = 'Ruby LiveScript is a bridge to the JS LiveScript compiler.'

  s.files = Dir[
    'lib/**/*',
    'test/**/*',
    'Rakefile',
    'LICENSE',
    'README.md',
  ]

  s.add_runtime_dependency 'livescript-source', '>= 1.4.0.rc.1', '< 1.5.0'
  s.add_runtime_dependency 'execjs', '~> 2.0'

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 11.1'
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'execjs', '~> 2.6'
end
