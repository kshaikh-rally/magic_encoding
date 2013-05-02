# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{magic_encoding}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Khalid Shaikh"]
  s.date = %q{2010-08-03}
  s.default_executable = %q{magic_encoding}
  s.email = ["kshaikh@rallydev.com"]
  s.executables = ["magic_encoding"]
  s.files = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc CHANGELOG LICENCE)
  s.homepage = %q{https://github.com/kshaikh-rally/magic_encoding}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Easily add magic comments for encoding on multiple ruby source files}
  
end
