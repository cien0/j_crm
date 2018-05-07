class HomeController < ApplicationController
  def index
    @currentUser = current_user.id
    @currentName = current_user.username
  end
end
