# frozen_string_literal: true

class UsersController < ApplicationController

  # Temporary hack to check curl
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    result = Users::Create.run(params[:user])
    if result.valid?
      head :created
    else
      render json: { errors: result.errors.full_messages }
    end
  end
end
