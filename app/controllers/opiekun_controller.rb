class OpiekunController < ApplicationController
  
  before_action :set_opiekun, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 
  before_action :authenticate_admin!
  
 
  
  # GET /opiekun
  # GET /opiekun.json
  def index
    @opiekun = Opiekun.all
    if user_signed_in? then
    @currentUser = current_user.id
    @currentName = current_user.username
    end 
  end
  

  # GET /opiekun/1
  # GET /opiekun/1.json
  def show
  end

  # GET /opiekun/new
  def new
    @opiekun = Opiekun.new
  end

  # GET /opiekun/1/edit
  def edit
  end

  # POST /opiekun
  # POST /opiekun.json
  def create
    @opiekun = Opiekun.new(opiekun_params)

    respond_to do |format|
      if @opiekun.save
        format.html { redirect_to @opiekun, notice: 'Opiekun został stworzony.' }
        format.json { render :show, status: :created, location: @opiekun }
      else
        format.html { render :new }
        format.json { render json: @opiekun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opiekun/1
  # PATCH/PUT /opiekun/1.json
  def update
    respond_to do |format|
      if @opiekun.update(opiekun_params)
        format.html { redirect_to @opiekun, notice: 'Opiekun został zaktualizowany.' }
        format.json { render :show, status: :ok, location: @opiekun }
      else
        format.html { render :edit }
        format.json { render json: @opiekun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opiekun/1
  # DELETE /opiekun/1.json
  def destroy
    @opiekun.destroy
    respond_to do |format|
      format.html { redirect_to opiekun_index_url, notice: 'Opiekun został usunięty.' }
      format.json { head :no_content }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opiekun
          @opiekun = Opiekun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opiekun_params
        params.require(:opiekun).permit(:imie, :nazwisko, :login, :aktywny)
    end
end

