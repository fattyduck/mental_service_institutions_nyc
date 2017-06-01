class ErrorMailer < ApplicationMailer
  def error_info(error)
    mail to: "ruandisheng@gmail.com", subject: "Error in Update"
  end
end
