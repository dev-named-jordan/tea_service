class Api::V1::CustomerSubscriptionsController < ApplicationController
  before_action :subscription_params, only: [:create, :update]
  before_action :create_customer_subscription_params, only: [:create, :update]

  # def index
    # require "pry"; binding.pry
    # customer_subscriptions = CustomerSubscription.where(customer_id: "")
    # render json: customer_subscriptions
  # end

  def create
    customer_subscription = CustomerSubscription.create!(customer_id: create_customer_subscription_params[:customer_id], subscription_id: create_customer_subscription_params[:subscription_id])
    render json: customer_subscription
  end

  def update
    
  end

  private

  def subscription_params
    params.permit(:name, :status, :price, :frequency_delivered)
  end

  def create_customer_subscription_params
    params.permit(:customer_id, :subscription_id)
  end
end
