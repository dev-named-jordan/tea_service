class Api::V1::TeasController < ApplicationController
  def index
    teas = Teas.all
    if teas.blank?
      render json: { 'Message': { 'Error': 'No Teas' } }, status: :bad_request
    else
      render json: TeaSerializer.new(customers)
    end
  end
end
