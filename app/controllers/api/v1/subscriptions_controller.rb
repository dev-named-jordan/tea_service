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

    # if subscription.first.status == "ordered"
    #   subscription.first.status = "cancelled"
    # elsif subscription.first.status == "cancelled"
    #   subscription.first.status = "ordered"
    # end

    render json: update_subscription
  end

  private

  def update_subscription_params
    params.permit(:status)
  end
end
