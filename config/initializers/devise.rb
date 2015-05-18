
Devise.setup do |config|
  config.secret_key = 'a83b511317fc193607e4ef141233f7ea44341995d46fdc6c897dc6c78f58d351dcee88ed16a718ebf84f8fbc7b2a3647bf770a4d32f7a3d9a6f935935bd39cc4'
  config.mailer_sender = 'somarmelhem5@hotmail.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]
  config.authentication_keys = [ :login ]
  config.strip_whitespace_keys = [ :email ]

  config.skip_session_storage = [:http_auth]
  #sdsadas
  config.expire_all_remember_me_on_sign_out = true
  
  

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 8..128

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete


end
