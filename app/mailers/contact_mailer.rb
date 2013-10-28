class ContactMailer < ActionMailer::Base  
  def contact(params)
    @note = params[:note]
    mail(to: "Phil <#{ENV['GMAIL_USERNAME']}>",
      from: "#{params[:name]} <#{params[:email2]}>",
      subject: "Pahart.com inquiry: #{params[:subject]}")
  end

  def contact_verification(params)
    mail(to: "#{params[:name]} <#{params[:email2]}>", 
      from: "Phil <#{ENV['GMAIL_USERNAME']}>",
      subject: "Pahart.com inquiry sent")
  end

end
