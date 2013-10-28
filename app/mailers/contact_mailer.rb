class ContactMailer < ActionMailer::Base  
  def contact(params)
    @note           = params[:note]
    @contact_email  = params[:email2]
    mail(to: "Phil <#{ENV['GMAIL_USERNAME']}>",
      # from email gets changed to actual sending email by google
      from: "via pahart.com <#{@contact_email}>", 
      subject: "Pahart.com inquiry: #{params[:subject]}")
  end

  def contact_verification(params)
    mail(to: "#{params[:name]} <#{params[:email2]}>", 
      from: "Phil <#{ENV['GMAIL_USERNAME']}>",
      subject: "Pahart.com inquiry sent")
  end

end
