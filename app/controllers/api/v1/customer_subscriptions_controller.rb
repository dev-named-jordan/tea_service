class Api::V1::CustomerSubscriptionsController < ApplicationController
  before_action :create_customer_subscription_params, only: [:create, :update]

  def create
    subscription = Subscription.where(id: create_customer_subscription_params[:subscription_id].to_i)

    subscription.first.status = "ordered"

    customer_subscription = CustomerSubscription.create!(customer_id: create_customer_subscription_params[:customer_id], subscription_id: create_customer_subscription_params[:subscription_id])
    render json: customer_subscription
  end

  private

  def create_customer_subscription_params
    params.permit(:customer_id, :subscription_id)
  end
end
