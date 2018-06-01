class LoadObrotyController < ApplicationController
      before_action :authenticate_admin!
      before_action :authenticate_user!
  
def upload
  uploaded_io = params[:csv_file]
if uploaded_io then
  File.open(Rails.root.join('public','uploads', 'kontrahenci.csv'), 'wb') do |file|
    file.write(uploaded_io.read)
    redirect_to load_kontrahenci_show_path
end
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
