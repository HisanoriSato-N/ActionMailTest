require "active_support/core_ext/integer/time"

# The test environment is used exclusively to run your application's
# test suite. You never need to work with it otherwise. Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs. Don't rely on the data there!



Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  config.cache_classes = true

      #メール設定
    #deviseが認証用のURLなどを生成するのに必要になる（らしい）
    config.action_mailer.default_url_options = {  host: 'localhost', port: 3000 }
    #送信方法を指定（この他に:sendmail/:file/:testなどがあります)
    config.action_mailer.delivery_method = :smtp
    #送信方法として:smtpを指定した場合は、このconfigを使って送信詳細の設定を行います
    config.action_mailer.smtp_settings = {
      #gmail利用時はaddress,domain,portは下記で固定
      address:"smtp.gmail.com",
      domain: 'gmail.com',
      port:587,
      #gmailのユーザアカウント（xxxx@gmail.com)※念のため、credentials.yml.enc行き
      user_name: 'hissabito.310@gmail.com',
      #gmail２段階認証回避のためにアプリケーションでの利用パスワードを取得、必ずcredentials.yml.endに設定を！！
      password: 'wlhbsjzcltxdjfez',
      #パスワードをBase64でエンコード
      authentication: :login
    }

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = false

  # Configure public file server for tests with Cache-Control for performance.
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{1.hour.to_i}"
  }

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Store uploaded files on the local file system in a temporary directory.
  config.active_storage.service = :test

  config.action_mailer.perform_caching = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true
    # #メール設定
    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = {
    # address:              'mail.securemx.jp',
    # port:                  465,
    # domain:               'alinco.co.jp',
    # user_name:            'hisarnoi-sato@alinco.co.jp',
    # password:             'elrh9L%wnyur',
    # authentication:       'plain',
    # enable_starttls_auto:  true
    # }
  #メール設定
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                  587,
  domain:               'gmail.com',
  user_name:            'hissabito.310@gmail.com',
  password:             'mystarpako2',
  authentication:       'plain',
  enable_starttls_auto:  true
  }
  
end
