$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "rails-jquerymobile/version"
 
task :build do
    system "gem build rails-jquerymobile.gemspec"
end
 
task :release => :build do
    system "gem push rails-jquerymobile-#{Bunder::VERSION}"
end
