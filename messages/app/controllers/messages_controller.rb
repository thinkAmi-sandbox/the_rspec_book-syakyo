class MessagesController < ApplicationController
  def create
    redirect_to :action => "index"
  end
end
