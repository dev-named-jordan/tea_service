require 'rails_helper'

RSpec.describe 'Customers request', type: :request do
  it 'It can list all customers', :vcr do

    get "/api/v1/customers"

    customer = JSON.parse(response.body, symbolize_names:true)

    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(customer[:data].keys).to match_array [:name, :status, :price, :frequency_delivered]
    # expect(forecast[:data]).to be_a(Hash)
    # expect(forecast[:data]).to have_key(:id)
    # expect(forecast[:data]).to have_key(:type)
    # expect(forecast[:data]).to have_key(:attributes)
    # expect(forecast[:data][:id]).to be_a(String)
    # expect(forecast[:data][:type]).to be_a(String)
    # expect(forecast[:data][:type]).to eq("forecast")
    # expect(forecast[:data][:attributes]).to be_a(Hash)
    # expect(forecast[:data][:attributes]).to have_key(:current_weather)
    # expect(forecast[:data][:attributes]).to have_key(:hourly_weather)
    # expect(forecast[:data][:attributes]).to have_key(:daily_weather)
    # expect(forecast[:data][:attributes][:current_weather]).to be_a(Hash)
    # expect(forecast[:data][:attributes][:current_weather].count).to eq(10)
  end
  # it 'It can list a specific customers details', :vcr do
  #
  #   get "/api/v1/forecast?location=denver,co"
  #
  #   forecast = JSON.parse(response.body, symbolize_names:true)
  #
  #   expect(response).to be_successful
  #   expect(response.status).to eq(200)
  # end
end
