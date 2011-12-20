require 'rails/generators'
require 'rails-jquerymobile/has_mobile_format'

class RailsJquerymobile::Railtie < Rails::Railtie
  initializer "RailsJquerymobileRailtie" do
    Mime::Type.register_alias "text/html", :mobile
  end
end

ActionController::Base.send :include, HasMobileFormat

class RailsJquerymobile::LayoutGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  def create_mobile_layout
    #create_file "app/views/layouts/application.mobile.erb", "<!-- This may be a layout... -->"
    copy_file "application.mobile.erb", "app/views/layouts/application.mobile.erb"
  end
end

