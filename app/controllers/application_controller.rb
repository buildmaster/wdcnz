class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_uri

  def check_uri
    if /[.]*webdevcon.org/.match(request.host)
      redirect_to request.protocol + "webdev.org.nz"+request.request_uri
    elsif /^www/.match(request.host)
      redirect_to request.protocol + request.host_with_port[4..-1] + request.request_uri 
    end
  end
end
