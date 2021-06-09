class Api::V1::CustomerSubscriptionsController < ApplicationController
  # before_action :customer_subscription_params, only: [:create, :update]

  # def index
  #   # require "pry"; binding.pry
  #   # customer_subscriptions = CustomerSubscription.where(customer_id: "")
  #   # render json: customer_subscriptions
  # end

  # def create
  #   customer_subscription = CustomerSubscription.create!(subscription_id: subscription)
  #   render json: customer
  # end

  # def create
  #   customer_subscription = CustomerSubscription.new(customer_id: customer_subscriptions_param[:customer_id], subscription_id:customer_subscription_params[:subscription_id])
  #   if subscription.save
  #     render json: CustomerSubscriptionSerializer.new(subscription), status: 201
  #   else
  #     render json: {data: { error: "unable to subscribe"}}, status: 400
  #   end
  # end

  # def update
  #
  # end
  #
  # private
  #
  # def customer_subscription_params
  #   params.require(:subscription_id, :customer_id)
  # end
end
