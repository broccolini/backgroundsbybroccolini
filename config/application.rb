require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Backgroundsbybroccolini
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
  end
end

#                        production key from heroku       development key
GITHUB_CONSUMER_KEY    = ENV["GITHUB_CONSUMER_KEY"]    || "cf889255ecfd88b422a6"
GITHUB_CONSUMER_SECRET = ENV["GITHUB_CONSUMER_SECRET"] || "a4b51b121f8bdd3245f1237e2b0f7c6dbeccb8da"
