class ZlecenieController < ApplicationController
  before_action :set_zlecenie, only: [:show, :edit, :update, :destroy]

  # GET /zlecenie
  # GET /zlecenie.json
  def index
    @zlecenie = Zlecenie.all
  end

  # GET /zlecenie/1
  # GET /zlecenie/1.json
  def show
  end

  # GET /zlecenie/new
  def new
    @zlecenie = Zlecenie.new
  end

  # GET /zlecenie/1/edit
  def edit
  end

  # POST /zlecenie
  # POST /zlecenie.json
  def create
    @zlecenie = Zlecenie.new(zlecenie_params)

    respond_to do |format|
      if @zlecenie.save
        format.html { redirect_to @zlecenie, notice: 'Zlecenie was successfully created.' }
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
        format.html { redirect_to @zlecenie, notice: 'Zlecenie was successfully updated.' }
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
      format.html { redirect_to zlecenie_index_url, notice: 'Zlecenie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zlecenie
      @zlecenie = Zlecenie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zlecenie_params
      params.require(:zlecenie).permit(:Id_Kierownik, :Id_Opiekun, :Data_utworzenia, :Data_zlecenia, :Typ, :Opis, :Status, :Raport, :Info)
    end
end
