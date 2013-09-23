class EmailsController < ApplicationController
  respond_to :json

  def contact
    render json: {status: "success"}, status: 200
  end
end
