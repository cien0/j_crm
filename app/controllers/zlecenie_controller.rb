class ZlecenieController < ApplicationController
  before_action :set_zlecenie, only: [:show, :edit, :update, :destroy, :realizacja]
  before_action :authenticate_user!, only: [:show, :edit] 
  
  # GET /zlecenie
  # GET /zlecenie.json
  def index
    @zlecenie =  Zlecenie.all.paginate(:page => params[:page])
  end

  # GET /zlecenie/1
  # GET /zlecenie/1.json
  def show
  end
  
  def lista
    user = current_user.id-1
    @zlecenie =  Zlecenie.all.select { |m| m.opiekun_id == user }
  end
  
  # GET /zlecenie/new
  def new
     logger.debug "kontr new"
    @zlecenie = Zlecenie.new
  end

  # GET /zlecenie/1/edit
  def edit
  end
  
  # GET /zlecenie/1/realizacja
  def realizacja
  end
  # POST /zlecenie
  # POST /zlecenie.json
  def create
   @zlecenie = Zlecenie.new(zlecenie_params)

    respond_to do |format|
      if @zlecenie.save
        format.html { redirect_to @zlecenie, notice: 'Nowe zlecenie zostało stworzone.' }
        format.json { render :show, status: :created, location: @zlecenie }
      else
        format.html { render :new }
        format.json { render json: @zlecenie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zlecenie/1
  # PATCH/PUT /zlecenie/1.json
  def update
    respond_to do |format|
      if @zlecenie.update(zlecenie_params)
        format.html { redirect_to @zlecenie, notice: 'Zlecenie zostało zaktualizowane.' }
        format.json { render :show, status: :ok, location: @zlecenie }
      else
        format.html { render :edit }
        format.json { render json: @zlecenie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zlecenie/1
  # DELETE /zlecenie/1.json
  def destroy
    @zlecenie.destroy
    respond_to do |format|
      format.html { redirect_to zlecenie_index_url, notice: 'Zlecenie zostało usuniete.' }
      format.json { head :no_content }
    end
  end

def authenticate_user!
    # check if current user is admin
    if current_user.id != 2 then
    #logger.debug {user_signed_in?}
      # if current_user is not kierownik redirect to some route
      redirect_to '/'
    end
    # if current_user is admin he will proceed to edit action
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zlecenie
       @zlecenie = Zlecenie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zlecenie_params
       params.require(:zlecenie).permit(:kontrahenci_id, :kierownik_id, :opiekun_id, :data_utworzenia, :data_zlecenia, :opis, :status_zlecenia_id, :typ_spotkania_id, :raport, :info)
    end

end
