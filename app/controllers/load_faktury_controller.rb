class LoadFakturyController < ApplicationController
  before_action :authenticate_user! 
  before_action :authenticate_admin!
  
def upload
  uploaded_io = params[:csv_file]
if uploaded_io then
  File.open(Rails.root.join('public','uploads', 'faktury.csv'), 'wb') do |file|
    file.write(uploaded_io.read)
    redirect_to load_faktury_show_path
end
end
end


def authenticate_admin!
    if current_user.id != 1 then
      redirect_to '/'
    end
end

def authenticate_user!
    if !user_signed_in? then
      redirect_to '/'
    end
end


end
