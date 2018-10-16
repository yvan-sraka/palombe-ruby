Gem::Specification.new do |s|
    s.name        = 'palombe'
    s.version     = '0.2.0'
    s.summary = "Palombe lets you send and receive messages synchronously through different processes using named pipes"
    s.authors     = ["Yvan Sraka"]
    s.email       = 'yvan@sraka.pw'
    s.files       = ["lib/palombe.rb"]
    s.homepage    = 'http://rubygems.org/gems/palombe'
    s.license     = 'GPL-3.0'
    s.add_dependency 'mkfifo', '~> 0.1.1'
end