class EmailController < ApplicationController
  def new
    
    @title = "WDCNZ - Email Updates"
  end
  def create
    if params[:address]
      Email.create(:address=>params[:address]) unless Email.exists?(:address=>params[:address])
    else
      redirect_to :action=>:new
    end
  end
end
