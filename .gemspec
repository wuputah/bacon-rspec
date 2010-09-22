# -*- encoding: utf-8 -*-
require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/bacon/rspec"
 
Gem::Specification.new do |s|
  s.name        = "bacon-rspec"
  s.version     = Bacon::Rspec::VERSION
  s.authors     = ["Gabriel Horner", "Jonathan Dance"]
  s.email       = "gabriel.horner@gmail.com"
  s.homepage    = "http://github.com/jdance/bacon-rspec"
  s.summary = "Making bacon a little rspecier."
  s.description =  "This extends the bacon testing framework with useful extensions"
  s.required_rubygems_version = ">= 1.3.6"
  s.files = Dir.glob(%w[{lib,test}/**/*.rb bin/* [A-Z]*.{txt,rdoc} ext/**/*.{rb,c} **/deps.rip]) + %w{Rakefile .gemspec}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.add_dependency 'bacon', '>=1.1.0'
  s.license = 'MIT'
end
