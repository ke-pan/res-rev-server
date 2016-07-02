class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery except: Proc.new {|c| c.request.format == 'application/vnd.api+json'}

  def respond_errors(object, status)
    render json: { errors: ErrorSerializer.serialize(object) }, status: status
  end

  def current_user
    @current_user ||= User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
