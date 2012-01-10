Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, 'anonymous', 'anonymous'
end