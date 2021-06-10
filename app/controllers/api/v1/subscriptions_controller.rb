class Api::V1::SubscriptionsController < ApplicationController
  before_action :update_subscription_params, only: [:update]

  def index
    customer = Customer.find(params[:customer_id])
    subscriptions = customer.subscriptions
    render json: subscriptions
  end

  def update
    subscription = Subscription.where(id: params[:id].to_i)
    update_subscription = subscription.update(update_subscription_params)
    render json: update_subscription
  end

  private

  def update_subscription_params
    params.permit(:status)
  end
end
