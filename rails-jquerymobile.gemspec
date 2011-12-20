# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails-jquerymobile/version"

Gem::Specification.new do |s|
  s.name = "rails-jquerymobile"
  s.version = RailsJquerymobile::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Chris"]
  s.email = ["christian.oloff+gem@gmail.com"]
  s.homepage = "https://github.com/Chris927/rails-jquerymobile"
  s.summary = "Use jQuery Mobile in a Rails application."
  s.description = "Use jQuery Mobile in a Rails application by adding a :mobile format, and by adding a mobile layout that references jQuery Mobile"
  s.rubyforge_project = "rails-jquerymobile"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
#  s.test_files.reject! { |fn| fn.include? ".swp" }
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'rails'
  [ ].each do |d| # no dependencies right now ;)
    s.add_development_dependency d
  end

end

