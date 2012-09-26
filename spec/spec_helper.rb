require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rack/test'

set :environment, :test
set :run, false
set :faise_errors, true
set :logging, true

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
