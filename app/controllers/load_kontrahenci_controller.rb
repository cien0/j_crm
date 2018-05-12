class LoadKontrahenciController < ApplicationController

  before_action :authenticate_admin!
  before_action :authenticate_user!

def new_import
end

def new
end

def create
      @load_kontrahenci = LoadKontrahenci.new(params[:post].permit(:title, :text, :user, :screen))

      if @load_kontrahenci.save
        redirect_to load_kontrahenci_upload_path
      else
        render 'new'
      end
end
  
def upload
        
        uploaded_io = params[:file]
        File.open(Rails.root.join('public', 'uploads', 'kontrahenci.csv'), 'wb') do |file|
           file.write(uploaded_io)
         end
end

def authenticate_admin!
    # check if current user is admin
    if current_user.id != 1 then
    logger.debug {"aaa #user_signed_in?"}
      # if current_user is not admin redirect to some route
      redirect_to '/'
    end
    # if current_user is admin he will proceed to edit action
end

end
