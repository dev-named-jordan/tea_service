class Api::V1::SubscriptionsController < ApplicationController
  before_action :update_subscription_params, only: [:update]

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
  def update
    # require "pry"; binding.pry
    # subscription = Subscription.where(id: update_subscription_params[:subscription_id].to_i)
    subscription = Subscription.where(id: params[:id].to_i)

  # update_subscription = subscription.update(update_subscription_params)


    if subscription.first.status == "ordered"
      subscription.first.status = "cancelled"
    elsif subscription.first.status == "cancelled"
      subscription.first.status = "ordered"
    end

    # subscription.save

    render json: subscription
    # render json: subscription
  end

  private

  def update_subscription_params
    params.permit(:name, :status, :price, :frequency_delivered)
  end
end
