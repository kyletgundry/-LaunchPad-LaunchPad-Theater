ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :domain => 'example.com',
  :authentication => :plain,
}

SendGrid.configure do |config|
  config.dummy_recipient = 'gundr1kt@gmail.com'
end