# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby '3.1.2'

* System dependencies
None

#機能
ActionMailを使用したメール送信機能
・社内アドレスを使用したメール自動送信
・ファイル添付メールの送信

###使用GEM
gem 'net-smtp'
gem 'tzinfo-data'
gem 'mail'


###使用テーブル
Inquery(お問い合わせ)テーブルのみ使用
・name[strig]
・message[string]



##使用方法
*メール送信先の設定
下記33-59行目の記述を必要に応じて変更する。(今回は佐藤のメールアカウント)
config\environments\development.rb

※コンソールで使用する場合ははdevelopment.rbファイルへの記述で問題ないが、
　本番環境での使用の場合は同ディレクトリのproduction.rbへ同内容を記述する。

*メール送信内容(宛先・送信元・添付ファイル等)を設定する
app\mailers\inquiry_mailer.rb

Railsコンソールにて下記ファイルの２行を実行する
test\mailers\previews\inquiry_mailer_preview.rb

######新規アプリで実装する場合の参照手順
https://www.sejuku.net/blog/48739
(その他テスト方法等も記載)

######ActionMailerコマンドリスト
https://railsguides.jp/action_mailer_basics.html


###Gmailを利用する場合の注意事項
・2段階認証時のアプリケーションキー作成と反映
https://qiita.com/ozackiee/items/f260f34db4e5c887460d
・安全度の低いアプリからのアクセス許可
https://support.google.com/a/answer/6260879?hl=ja

###補足
app\mailers\inquiry_mailer.rb
に記載されている送信元を変更することで、送信元メールアドレスの指定が可能。
受信者はメールに対する返信も可能で、送信元アドレスに指定したアドレスへ返信される。

* ...
