$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "rails-jquerymobile/version"

task :build do
  system "gem build rails-jquerymobile.gemspec"
end

task :release => :build do
  system "gem push rails-jquerymobile-#{RailsJquerymobile::VERSION}.gem"
end

task :push do
  system "git push -u origin master"
end
