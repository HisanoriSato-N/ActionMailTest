# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview
    def inquiry
        #インスタンスを作成
        inquiry = Inquiry.new(name: "何としてもGmailでメールを送りたい人", message: "聞こえますか・・・今、あなたのメールアドレスに直接語りかけています・・・・")
    
        #メール送信(Railsコンソールで実行)
        InquiryMailer.send_mail(inquiry).deliver_now!
    end
end
