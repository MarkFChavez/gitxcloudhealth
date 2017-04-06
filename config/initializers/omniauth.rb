Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, Rails.application.secrets.gh_client_key, Rails.application.secrets.gh_client_secret
end
