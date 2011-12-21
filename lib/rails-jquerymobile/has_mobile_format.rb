module HasMobileFormat

  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def has_mobile_format(options = {})
      send :include, InstanceMethods
      class_attribute :jquerymobile_options
      self.jquerymobile_options = options
      before_filter :prepare_for_mobile_formats
    end
  end

  module InstanceMethods
    def mobile?
      raise "not implemented yet"
    end
    # TODO: following should be private?
    def prepare_for_mobile_formats
      remember_format(params[:mobile].to_s)
      puts "before assigning: request.format=#{request.format}, " +
           "session[:remembered_format]=#{session[:remembered_format]}" if debug?
      format = session[:remembered_format]
      puts "determined format=#{format}" if debug?
      request.format = format unless format.blank?
      puts "request.format=#{request.format}" if debug?
    end

    private

    def remember_format(format)
      session[:remembered_format] = :mobile if format == '1'
      session[:remembered_format] = nil if format == '0'
      puts "session[:remembered_format]=#{session[:remembered_format]}" if debug?
    end

    def debug?
      self.class.jquerymobile_options[:debug]
    end
  end

end
