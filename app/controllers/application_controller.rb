class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:show, :index]
  def require_user
    true
  end
end
