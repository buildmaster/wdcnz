require 'csv'
class EmailsController < ApplicationController
  USER_ID, PASSWORD = "wdcnz", "0x[IDPou7O5PIUw>eeY"
  # Require authentication only for edit and delete operation
  before_filter :authenticate
  def index
    @emails = Email.find(:all)

          csv_string = CSV.generate do |csv|
            # header row
            csv << ["id", "address"]

            # data rows
            @emails.each do |email|
              csv << [email.id, email.address]
            end
          end

          # send it to the browsah
          send_data csv_string,
                    :type => 'text/csv; charset=iso-8859-1; header=present',
                    :disposition => "attachment; filename=users.csv"
  end
  private
     def authenticate
        authenticate_or_request_with_http_basic do |id, password| 
            id == USER_ID && password == PASSWORD
        end
     end
end
