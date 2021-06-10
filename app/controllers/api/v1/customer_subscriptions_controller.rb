class Api::V1::CustomerSubscriptionsController < ApplicationController
  before_action :create_customer_subscription_params, only: [:create, :update]

  def create
    subscription = Subscription.where(id: create_customer_subscription_params[:subscription_id].to_i)
    subscription.first.status = "ordered"
    customer_subscription = CustomerSubscription.new(customer_id: create_customer_subscription_params[:customer_id], subscription_id: create_customer_subscription_params[:subscription_id])
    if customer_subscription.save
      render json: CustomerSubscriptionSerializer.new(customer_subscription), status: 201
    else
      render json: { data: { error: "unable to subscribe" } }, status: 400
    end
  end

  private

  def create_customer_subscription_params
    params.permit(:customer_id, :subscription_id)
  end
end
