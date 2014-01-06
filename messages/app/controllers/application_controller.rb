class ApplicationController < ActionController::Base
  rescue_from AccessDenied, :with => :access_denied

protected
  def access_denied
    redirect_to "/401.html"
  end
end
