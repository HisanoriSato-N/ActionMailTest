class ContactMailer < ApplicationMailer
  def send_mail
    @contact = params[:contact]

    app_name = Rails.application.class.parent_name
    mail(to: contact@example.com, subject: "【#{app_name}】新着のお問い合わせ")
  end
end
