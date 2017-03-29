class ApplicationMailer < ActionMailer::Base
  default from: 'patrickabadilla2@gmail.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'patrickabadilla2@gmail.com', subject: 'New message from website') do |format|
      format.html { render 'contact_mailer' }
      format.text { render 'contact_mailer' }
    end
  end
end
