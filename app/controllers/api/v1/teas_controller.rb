class Api::V1::TeasController < ApplicationController
  def index
    teas = Tea.all
    if teas.blank?
      render json: { 'Message': { 'Error': 'No Teas' } }, status: :bad_request
    else
      render json: TeaSerializer.new(teas)
    end
  end
end
