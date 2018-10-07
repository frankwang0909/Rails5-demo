Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp

  # gmail config
  config.action_mailer.smtp_setting = {
    address:             "smtp.gmail.com",
    port:                587,
    domain:              "domain.of.sender.net",
    authentication:      "plain",
    user_name:           "dave",
    password:            "secret",
    enable_starttls_auto: true,
  }
end