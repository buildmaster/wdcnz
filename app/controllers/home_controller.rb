class HomeController < ApplicationController
  
  def index
    if params[:address]
      Email.create(:address=>params[:address]) unless Email.exists?(:address=>params[:address])
    end
    @title = "WDCNZ - Home"
  end

end
