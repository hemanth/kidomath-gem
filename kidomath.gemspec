Gem::Specification.new do |s|
  s.name               = "kidomath"
  s.version            = "1.0.0"
  s.default_executable = "kidomath"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hemanth.HM"]
  s.date = %q{2012-05-25}
  s.description = %q{"Kids do math on the CLI"}
  s.email = %q{hemanth.hm@gmail.com}
  s.files = ["Rakefile", "lib/kidomath.rb", "bin/kidomath"]
  s.test_files = Dir.glob('test/*.rb')
  s.homepage = %q{http://rubygems.org/gems/kidomath}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{XCKD random img urls!}
  s.bindir = 'bin'
  s.add_dependency('cadbury', '>= 1.0.0')
  s.executables = 'kidomath'

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

