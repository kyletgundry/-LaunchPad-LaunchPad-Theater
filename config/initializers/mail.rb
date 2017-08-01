ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :domain => 'example.com',
  :authentication => :plain,
  :user_name => ENV["USERNAME"],
  :password => ENV["PASSWORD"]
}

SendGrid.configure do |config|
  config.dummy_recipient = 'gundr1kt@gmail.com'
end