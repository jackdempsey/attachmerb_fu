require 'rubygems'
require 'rake/gempackagetask'

PLUGIN = "attachmerb_fu"
NAME = "attachmerb_fu"
VERSION = "0.0.1"
#AUTHOR = "Michael Siebert"
#EMAIL = "siebertm85@googlemail.com"
AUTHOR = "Jack Dempsey"
EMAIL = "jack.dempsey@gmail.com" # Michael was the original convertor but has moved on to other things
                                 # so feel free to contact me instead with questions, etc
HOMEPAGE = "http://github.com/jackdempsey/attachmerb_fu/tree/master"
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
  s.add_dependency('merb', '>= 0.9.3')
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