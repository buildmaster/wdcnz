class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_uri

  def check_uri
    if /[.]*webdev.org.nz/.match(request.host)
      redirect_to request.protocol + "wdcnz.com"+request.request_uri
    elsif /[.]*webdevcon.org/.match(request.host)
          redirect_to request.protocol + "wdcnz.com"+request.request_uri
    elsif /welli.net.nz/.match(request.host)
          redirect_to request.protocol + "www.welli.net.nz"+request.request_uri
    elsif /^www/.match(request.host)
      redirect_to request.protocol + request.host_with_port[4..-1] + request.request_uri 
    end
  end
end
