ENV['APP_ENV'] = 'test'

require_relative '../sweetcash'
require 'rspec'
require 'rack/test'

RSpec.describe 'Sweet Cash App' do 
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "welcomes the user" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Welcome to Sweet Cash where your cash feels at home')
  end
end
