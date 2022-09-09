class ErrorsController < ApplicationController
  skip_before_action :authenticate_user!

  def not_found
    return_response status: 404
  end

  def unprocessable
    return_response status: 422
  end

  def internal_error
    return_response status: 500
  end

  private

  def return_response(status:)
    respond_to do |format|
      format.html { render status: status }
      format.all  { head status, content_type: "text/html" }
    end
  end
end
