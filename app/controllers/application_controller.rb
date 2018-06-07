class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    render file: "#{Rails.root}/public/404", layout: true, status: :not_found
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
