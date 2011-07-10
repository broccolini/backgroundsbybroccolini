Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, GITHUB_CONSUMER_KEY, GITHUB_CONSUMER_SECRET
end
