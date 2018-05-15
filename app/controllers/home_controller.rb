class HomeController < ApplicationController

  def index
    if user_signed_in? then
    $currentUser = current_user.id
    $currentName = current_user.username
    if current_user.id  != 1 and current_user.id  != 2
    redirect_to zlecenie_lista_path
    end 
    end
  end
end