class HomeController < ApplicationController
  def index
    if user_signed_in? then
    $currentUser = current_user.id
    $currentName = current_user.username
    end 
  end
  

end
