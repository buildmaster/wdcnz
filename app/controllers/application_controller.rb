class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_uri

  def check_uri
    redirect_to request.protocol + request.host_with_port + request.request_uri if /^www/.match(request.host)
  end
end
