Gem::Specification.new do |s|
  s.name      = 'livescript'
  s.version   = '2.2.0'
  s.date      = '2010-03-11'

  s.homepage    = "http://github.com/Roonin-mx/livescript-ruby"
  s.summary     = "Ruby LiveScript Compiler"
  s.description = <<-EOS
    Ruby LiveScript is a bridge to the JS LiveScript compiler.
  EOS

  s.files = [
    'lib/livescript.rb',
    'LICENSE',
    'README.md'
  ]

  s.add_dependency 'livescript-source'
  s.add_dependency 'execjs'

  s.authors = ['Victor Hugo Borja']
  s.email   = 'vic.borja@gmail.com'
end
