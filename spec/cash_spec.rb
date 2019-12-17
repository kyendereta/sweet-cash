ENV['APP_ENV'] = 'test'

require_relative '../sweetcash'
require 'rspec'
require 'rack/test'

RSpec.describe 'Sweet Cash App' do 
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "shows the menu list" do
    get '/'
    expect(last_response.body).to eq("Menu")
    expect(last_response.body).to eq("Deposit Cash")
    expect(last_response.body).to eq("Withdraw cash")
    expect(last_response.body).to eq("Send Cash")
    expect(last_response.body).to eq("Check Balance")
    expect(last_response.body).to eq("Save with Sweet Cash")
    expect(last_response.body).to eq("Previous Page")
    expect(last_response.body).to eq("Feedback")
    expect(last_response.body).to eq("Log Out")
  end
end
