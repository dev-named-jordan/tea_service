class Api::V1::CustomersController < ApplicationController
  def index
    customers = Customer.all
    if customers.blank?
      render json: { 'Message': { 'Error': 'No Customers' } }, status: :bad_request
    else
      render json: CustomerSerializer.new(customers)
    end
  end

  def show
    customer = Customer.find(params[:id])
    if customer.blank?
      render json: { 'Message': { 'Error': 'No Customer' } }, status: :bad_request
    else
      render json: CustomerSerializer.new(customer)
    end
  end
end
