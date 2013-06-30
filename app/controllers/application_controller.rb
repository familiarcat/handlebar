class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:show, :index, :edit, :new]
  def require_user
    true
  end
end
