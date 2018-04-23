class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
#test
  # before_action :authenticate_request, only: [:edit, :update, :destroy, :new, :create]

  attr_reader :current_user

  include ExceptionHandler

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
