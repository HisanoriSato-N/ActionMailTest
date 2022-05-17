class ApplicationMailer < ActionMailer::Base
  default from: 'hissabito.310@gmail.com'
  layout 'mailer'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'メールのタイトルがここに入ります')
  end

end