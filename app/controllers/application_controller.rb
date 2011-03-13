class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_uri

  def check_uri
    if /^www/.match(request.host)
        redirect_to request.protocol + request.host_with_port[4..-1] + request.request_uri 
    end
  end
end
