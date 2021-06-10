class Api::V1::SubscriptionsController < ApplicationController
  before_action :update_subscription_params, only: [:update]

  def index
    customer = Customer.find(params[:customer_id])
    subscriptions = customer.subscriptions
    if customer.blank?
      render json: {'Message': {'Error': 'No Customer'}}, status: :bad_request
    else
      render json: SubscriptionSerializer.new(subscriptions)
    end
  end

  def update
    subscription = Subscription.where(id: params[:id].to_i)
    update_subscription = subscription.update(update_subscription_params)
    if update_subscription
      render json: SubscriptionSerializer.new(update_subscription), status: 201
    else
      render json: {data: { error: "unable to subscribe"}}, status: 400
    end
  end

  private

  def update_subscription_params
    params.permit(:status)
  end
end
