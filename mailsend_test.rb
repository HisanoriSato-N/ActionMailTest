
    inquiry = Inquiry.new(name: "メールタロウ", message: "聞こえますか・・・今、あなたのメールアドレスに直接語りかけています・・・・")

    InquiryMailer.send_mail(inquiry)
