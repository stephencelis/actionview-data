Gem::Specification.new do |s|
  s.date = "2010-10-29"

  s.name = "actionview-data"
  s.version = "3.0.1"
  s.summary = "HTML5 data attribute helpers for ActionView."
  s.description = "HTML5 data attribute helpers for ActionView."

  s.require_path = "."
  s.files = %w(actionview-data.rb README.rdoc)
  s.test_file = "actionview-data_test.rb"

  s.add_dependency "actionpack", '~> 3.0.0'

  s.extra_rdoc_files = %w(README.rdoc)
  s.rdoc_options = %w(--main README.rdoc)

  s.author = "Stephen Celis"
  s.email = "stephen@stephencelis.com"
  s.homepage = "http://github.com/stephencelis/actionview-data"
end
