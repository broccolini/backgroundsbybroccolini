Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["GITHUB_CONSUMER_KEY"], ENV["GITHUB_CONSUMER_SECRET"]
end
