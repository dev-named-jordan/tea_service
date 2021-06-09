class Api::V1::CustomersController < ApplicationController
  def index
    require "pry"; binding.pry
    customers = Customer.all
  end

  def show
    customer = Customer.find(params[:id])
  end
end
