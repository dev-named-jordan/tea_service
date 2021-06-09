class Api::V1::SubscriptionsController < ApplicationController
  # before_action :subscription_params, only: [:create, :update]

  def index
    customer_subscriptions = CustomerSubscription.where(customer_id: params[:customer_id])

    subscriptions_1 = Subscription.find_by(id: customer_subscriptions.first[:subscription_id])

    subscriptions_2 = Subscription.find_by(id: customer_subscriptions.last[:subscription_id])

    subscriptions = [subscriptions_1, subscriptions_2]

    render json: subscriptions
  end

  # def create
  #   require "pry"; binding.pry
  #   subscription = Subscription.create!(subscription_params)
  #
  #   render json: subscription
  # end
  #
  # def update
  #
  # end
  #
  # private
  #
  # def subscription_params
  #   params.permit(:name, :status, :price, :frequency_delivered)
  # end
end
