class ClientController < ActionController::Base
  protect_from_forgery with: :exception
  include Authentication

  def show
    render layout: false
  end
end
