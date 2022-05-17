class InquiryMailer < ApplicationMailer
    def send_mail(inquiry)
        @inquiry = inquiry
        #ファイル添付(ファイル形式を維持して送付)
        attachments['Paplesマニュアル用.xlsx'] = {
            :content => File.read('D:\Users\hisanori-sato\Desktop\Paplesマニュアル用.xlsx', :mode => 'rb'),
            :transfer_encoding => :binary
        }
        attachments['testdata_設計書取込 .csv'] = {
            :content => File.read('D:\Users\hisanori-sato\Desktop\testdata_設計書取込 .csv', :mode => 'rb'),
            :transfer_encoding => :binary
        }
        attachments['sample.jpeg'] = {
            :content => File.read('D:\Users\hisanori-sato\Desktop\sample.jpeg', :mode => 'rb'),
            :transfer_encoding => :binary
        }
        mail(
            from: 'hissabito.310@gmail.com',
            # from: 'hisanori-sato@alinco.co.jp',
            # to:   'hissabito.310@gmail.com',
            to:   'hisanori-sato@alinco.co.jp',
            subject: 'mail送信テスト_From_Rails'
        )
    end
    #送信元は別アドレスを入力することで送信元を偽装可能。返信も可能。
end
