SimpleCov.start
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
  :provider => 'twitter',
  :extra => OmniAuth::AuthHash.new({
    :raw_info => OmniAuth::AuthHash.new({
      :uid => '123545',
      :name => 'Asurieru Dori-ma-'
    })
  }),
  :token =>  'KirisameReverse',
  :secret => 'HyperDeathMaster'
})

class ActionDispatch::IntegrationTest
  include Capybara::DSL
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
