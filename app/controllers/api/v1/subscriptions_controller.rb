class Api::V1::SubscriptionsController < ApplicationController

  def index
    customer_subscriptions = CustomerSubscription.where(customer_id: params[:customer_id])

    subscriptions_1 = Subscription.find_by(id: customer_subscriptions.first[:subscription_id])

    subscriptions_2 = Subscription.find_by(id: customer_subscriptions.last[:subscription_id])

    subscriptions = [subscriptions_1, subscriptions_2]

    render json: subscriptions
  end
end
