class EmailsController < ApplicationController
  respond_to :json

  def contact
    #for spam bots
    redirect_to root_path if params[:email] || params[:email1]

    errors = []
    errors << '#other-email' unless is_email?(params[:email2])
    errors << '#contact-note' unless params[:note].present?

    if errors.empty?
      ContactMailer.contact(params).deliver
      ContactMailer.contact_verification(params).deliver
      render json: {status: "success"}, status: 200
    else
      render json: {status: "error", errors: errors}, status: 404
    end
  end

  private

  def is_email?(string)
    return false if string.nil?
    string.match /.+@.+\..+/i
  end
end
