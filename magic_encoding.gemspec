# -*- encoding: utf-8 -*-
require 'date'

Gem::Specification.new do |s|
  s.name = %q{magic_encoding}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rally Software Development Corp"]
  s.date = Time.now.to_date.to_s
  s.default_executable = %q{magic_encoding}
  s.email = ["kshaikh@rallydev.com"]
  s.executables = ["magic_encoding"]
  s.files = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc CHANGELOG LICENCE)
  s.homepage = %q{https://github.com/kshaikh-rally/magic_encoding}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.0.3}
  s.summary = %q{Easily add Rally Copyright information on multiple ruby source files}

  s.add_development_dependency 'rake'
  s.add_development_dependency 'multipart-post'
  s.add_development_dependency 'geminabox'
end
