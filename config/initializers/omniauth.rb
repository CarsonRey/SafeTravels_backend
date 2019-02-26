Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.credentials.fb.app_id, Rails.application.credentials.fb.app_secret

end
