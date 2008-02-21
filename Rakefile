require 'rubygems'
require 'rake/gempackagetask'

PLUGIN = "attachmerb_fu"
NAME = "attachmerb_fu"
VERSION = "0.0.1"
AUTHOR = "Michael Siebert"
EMAIL = "siebertm85@googlemail.com"
HOMEPAGE = "http://merb-plugins.rubyforge.org/attachmerb_fu/"
SUMMARY = "Merb plugin that provides a port of attachment_fu to merb"

spec = Gem::Specification.new do |s|
  s.name = NAME
  s.version = VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README", "LICENSE", 'TODO']
  s.summary = SUMMARY
  s.description = s.summary
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
  s.add_dependency('merb', '>= 0.5.0')
  s.require_path = 'lib'
  s.autorequire = PLUGIN
  s.files = %w(LICENSE README Rakefile TODO) + Dir.glob("{lib,specs}/**/*")
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

task :install => [:package] do
  sh %{sudo gem install pkg/#{NAME}-#{VERSION}}
end